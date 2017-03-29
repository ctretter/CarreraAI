/*
 * 	author: David Kahlbacher.
 * 	TODO: implement assertions and/or exceptions
 */

#include "Track.h"

void Track::Push_Back(TrackPiece & piece){
	mTrack.push_back(piece);
}

void Track::Clear(void){
	mTrack.clear();
}

void Track::Remove(size_t const pos){
	if(pos < mTrack.size()){
		mTrack.erase(mTrack.begin()+pos);
	}
}

void Track::Insert_At(TrackPiece & piece, size_t const pos){
	if(pos < mTrack.size()){
		mTrack.insert(mTrack.begin()+pos, piece);
	}
}

void Track::Pop_Back(void){
	mTrack.pop_back();
}

Track::TTrack const& Track::getTrack(void) const{
	return mTrack;
}

Track::TTrack & Track::getTrack(void){
	return mTrack;
}

size_t Track::getPieceCount(void) const{
	return mTrack.size();
}

double Track::getLen(void) const{
	double l = 0.0;
	for(TTrackcIt it = mTrack.begin(); it != mTrack.end(); ++it){
		l += it->getLen();
	}
	return l;
}

void Track::CalcPos(double &x, double &y, double const len) const{
	double poslen = _OnTrack(len);
	double const getLen();
	TTrackcIt it = mTrack.begin();
	double l = it->getLen();
	while(l < poslen){
		++it;
		l += it->getLen();
	}
	it->CalcPos(x,y,it->getLen()-(l-poslen));
}

double Track::getRadius(double const x, double const y) const{
	double radius = 0.0;
	TTrackcIt it = mTrack.begin();
	while(it != mTrack.end() && !(it->IsOnTrack(x,y))){
		it++;
	}
	if(it != mTrack.end()){
		radius = it->getRadius();
	}
	return radius;
}

double Track::getRadius(double const len) const{
	double radius = 0.0;
	double const poslen = _OnTrack(len);
	TTrackcIt it = mTrack.begin();
	double l = it->getLen();
	while(l < poslen){
		++it;
		l += it->getLen();
	} 
	return it->getRadius();
}

double Track::_OnTrack(double const len) const{
	double l = len;
	if(l < 0){
		l = -l;
	}
	double const lmax = getLen();
	while(l >= lmax){
		l -= lmax;
	}
	return l;
}

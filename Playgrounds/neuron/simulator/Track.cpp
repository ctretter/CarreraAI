#include "Track.h"

void Track::Push_Back(TrackPiece & piece){
	mTrack.push_back(piece);
}

void Track::Clear(void){
	mTrack.clear();
}

void Track::Remove(size_t const pos){
	if(pos < mTrack.size()){
		mTrack.erase(pos);
	}
}

void Track::Insert_At(TrackPiece & piece, size_t const pos){
	if(pos < mTrack.size()){
		mTrack.insert(mTrack.begin()+pos);
	}
}

void Track::Pop_Back(void){
	mTrack.pop_back();
}


void Track::Remove(TrackPiece const& piece){
	auto it = mTrack.begin();
	while(it != mTrack.end() && *it != piece){
		++it;
	}
	if(it != mTrack.end()){
		mTrack.erase(it);
	}
}

Track::TTrack const& getTrack(void) const{
	return mTrack;
}

Track::TTrack & getTrack(void){
	return mTrack;
}

size_t Track::getPieceCount(void) const{
	return mTrack.size();
}

	/* To implement:
	double getLen(void) const;
	void CalcPos(double &x, double &y, double const len) const;
	double getRadius(double const x, double const y) const;
	double getRadius(double const len) const;
	*/

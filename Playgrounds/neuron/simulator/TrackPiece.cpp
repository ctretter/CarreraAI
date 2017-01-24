
#define _USE_MATH_DEFINES
#include <cmath>
#include "TrackPiece.h"
#include <iostream>

double const TrackPiece::PI_2 = 2.0*M_PI;

TrackPiece::TrackPiece(double const x, double const y, double const len, double const angle_i, double const angle_o, EDir const direction):mStart(x,y),mDirection(direction),mLen(len){
	_SetAngles(angle_i, angle_o);
	_CalcRadius();
}

TrackPiece::TrackPiece(double const x, double const y, double const x_o, double const y_o, double const angle_i, double const angle_o, EDir const direction):mStart(x,y),mDirection(direction){
	_SetAngles(angle_i, angle_o);
	_CalcRadius(x_o, y_o);
	_CalcLen(x_o,y_o);
}
	
void TrackPiece::CalcEndPoint(double &x, double &y) const{
	switch(mDirection){
	case EDir_Straight: x = mStart.first + mLen * cos(mAngles.first);
		y = mStart.second + mLen * sin(mAngles.first);
		break;
	case EDir_Left: x = mStart.first + mRadius * (sin(mAngles.second) - sin(mAngles.first));
		y = mStart.second + mRadius * (cos(mAngles.first) - cos(mAngles.second));
		break;
	case EDir_Right: x = mStart.first - mRadius * (sin(mAngles.second) - sin(mAngles.first));
		y = mStart.second - mRadius * (cos(mAngles.first) - cos(mAngles.second));
		break;
	default: x = 0.0;
		y = 0.0;
		break;
	}
}

std::pair<double,double> const& TrackPiece::getStartPoint(void) const{
	return mStart;
}

double const TrackPiece::getRadius(void) const{
	return mRadius;
}

std::pair<double,double> const& TrackPiece::getAngles(void) const{
	return mAngles;
}

double const TrackPiece::getLen(void) const{
	return mLen;
}

double const TrackPiece::getAngle(void) const{
	double angle = 0.0;
	switch(mDirection){
		case EDir_Straight: break;
		case EDir_Left: angle = mAngles.second - mAngles.first + (mAngles.second - mAngles.first > 0?(0):(PI_2));
			break;
		case EDir_Right: angle = mAngles.first - mAngles.second + (mAngles.first - mAngles.second > 0?(0):(PI_2));
			break;
	}
	return angle;
}

void TrackPiece::CalcPos(double &x, double &y, double const len) const{
	double angle_o = 0.0;
	switch(mDirection){
		case EDir_Straight: x = mStart.first + len * cos(mAngles.first);
		y = mStart.second + len * sin(mAngles.first);
		break;
	case EDir_Left: angle_o = len / mRadius + mAngles.first;
		x = mStart.first + mRadius * (sin(angle_o) - sin(mAngles.first));
		y = mStart.second + mRadius * (cos(mAngles.first) - cos(angle_o));
		break;
	case EDir_Right: angle_o = len / mRadius + mAngles.first; 
		x = mStart.first - mRadius * (sin(mAngles.second) - sin(angle_o));
		y = mStart.second - mRadius * (cos(mAngles.first) - cos(angle_o));
		break;
	default: x = 0.0;
		y = 0.0;
		break;
	}
}
	
void TrackPiece::_CalcRadius(){
	switch(mDirection){
	case EDir_Straight: mRadius = 0.0;
		break;
	case EDir_Left: mRadius = mLen / getAngle();
		break;
	case EDir_Right: mRadius = mLen / getAngle();
		break;
	default: mRadius = 0.0;
		break;
	}
	if(mRadius < 0){
		mRadius = -mRadius;
	}
}

void TrackPiece::_CalcRadius(double const x, double const y){
	switch(mDirection){
	case EDir_Straight: mRadius = 0.0;
		break;
	case EDir_Left: mRadius = (x - mStart.first) / (sin(getAngle()));
		break;
	case EDir_Right: mRadius = (mStart.first - x) / (sin(getAngle()));
		break;
	default: mRadius = 0.0;
		break;
	}
	if(mRadius < 0){
		mRadius = -mRadius;
	}
}

void TrackPiece::_SetAngles(double const angle_i, double const angle_o){
	mAngles.first = angle_i;
	mAngles.second = angle_o;
	
	while(mAngles.first < 0) mAngles.first += PI_2;
	while(mAngles.first >= PI_2) mAngles.first -= PI_2;
	while(mAngles.second < 0) mAngles.second += PI_2;
	while(mAngles.second >= PI_2) mAngles.second -= PI_2;
}

void TrackPiece::_CalcLen(double const x, double const y){
	switch(mDirection){
	case EDir_Straight: mLen = sqrt(pow((x - mStart.first)/cos(mAngles.first),2) + pow((y - mStart.first)/sin(mAngles.first),2));
		break;
	case EDir_Left: mLen = mRadius * (mAngles.second - mAngles.first);
		break;
	case EDir_Right: mLen = mRadius * (mAngles.second - mAngles.first);
		break;
	default: mLen = 0.0;
		break;
	}
	if(mLen < 0){
		mLen = -mLen;
	}
}


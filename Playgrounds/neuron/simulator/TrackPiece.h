#pragma once

#include <utility>

enum EDir {
	EDir_Right,
	EDir_Left,
	EDir_Straight,
};

class TrackPiece{
public:
	
	static double const PI_2;
	typedef std::pair<double,double> TPair;
	
	TrackPiece(double const x, double const y, double const len, double const angle_i, double const angle_o, EDir const direction);
	TrackPiece(double const x, double const y, double const x_o, double const y_o, double const angle_i, double const angle_o, EDir const direction);
	
	void CalcEndPoint(double &x, double &y) const;
	TPair const& getStartPoint(void) const;
	double const getRadius(void) const;
	TPair const& getAngles(void) const;
	double const getAngle(void) const;
	double const getLen(void) const;
	
	void CalcPos(double &x, double &y, double const len) const;
	
	
private:
	void _CalcRadius();
	void _CalcRadius(double const x, double const y);
	void _SetAngles(double const angle_i, double const angle_o);
	void _CalcLen(double const x, double const y);
	
	TPair 		mStart;
	double 		mRadius;
	TPair		mAngles;
	double 		mLen;
	EDir		mDirection;
};

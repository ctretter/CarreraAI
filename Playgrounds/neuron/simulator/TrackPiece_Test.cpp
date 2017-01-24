
#include "TrackPiece.h"
#include <iostream>
#include <iomanip>
#include <cmath>



void PrintTestName(std::string const& msg, bool const test = true){
	static size_t testcase = 0;
	if(test){
		std::cout << "Test " << ++testcase << ": " << msg << std::endl;
	}
	std::cout << std::setfill('-') << std::setw(80) << "-" << std::endl;
	if(!test){
		std::cout << std::endl;
	}
}

void TestCtor(double const x_start, double const y_start, double const x_o, double const y_o, double const r, double const phi_in, 
				double const phi_out, double const len, EDir const& dir, std::string const& msg, size_t const w, TrackPiece const& straight_piece)
{
	PrintTestName(msg);
	double x = 0.0;
	double y = 0.0;
	
	TrackPiece::TPair Start;
	straight_piece.CalcEndPoint(x,y);
	Start = straight_piece.getStartPoint();
	double angle = phi_out-phi_in;
	if(dir == EDir_Right){
		angle = -angle;
	}
	while(angle < 0) angle += TrackPiece::PI_2;
	while(angle > TrackPiece::PI_2) angle -= TrackPiece::PI_2;
	std::cout << std::setfill(' ') << std::setw(w) << " " << std::setw(w) << std::left << "Radius" << "| " << std::setw(w) << "Xout" 
				<< "| "<<  std::setw(w) << "Yout" << "| " << std::setw(w) << "Xin"  << "| " << std::setw(w) << "Yin" << "| " << std::setw(w) << "Angle" << std::endl;
	std::cout << std::setw(w) << "Expected:" << std::setw(w) << r << "| " << std::setw(w) << x_o << "| " << std::setw(w) << y_o 
				<< "| " << std::setw(w) << x_start << "| " << std::setw(w) << y_start << "| " << std::setw(w) << angle << std::endl;
	std::cout << std::setw(w) << "Real:" << std::setw(w) << straight_piece.getRadius() << "| " << std::setw(w) << x << "| " 
				<< std::setw(w) << y << "| " << std::setw(w) << Start.first << "| " << std::setw(w) << Start.second << "| " << std::setw(w) << straight_piece.getAngle() << std::endl;
	PrintTestName("",false);
}

int main(int argc, char** argv){
	double x_start = 10.0;
	double y_start = 10.0;
	double x_o = 10.0;
	double y_o = 40.5;
	double r = 0.0;
	double x = 0.0;
	double y = 0.0;
	double phi_in = M_PI_2;
	double phi_out = phi_in;
	double len = 30.5;
	EDir dir = EDir_Straight;
	std::cout << "TrackPiece_Test" << std::endl << std::endl;
	{
		TrackPiece piece(x_start,y_start,len,phi_in,phi_out,dir);
		TestCtor(x_start,y_start,x_o,y_o,r,phi_in,phi_out,len,dir,"Testing CTor_1 straight up",10,piece);
	}
	{
		phi_in = 0.0;
		phi_out = 0.0;
		x_o = 40.5;
		y_o = 10.0;
		TrackPiece piece(x_start,y_start,len,phi_in,phi_out,dir);
		TestCtor(x_start,y_start,x_o,y_o,r,phi_in,phi_out,len,dir,"Testing CTor_1 straight right",10,piece);
	}
	{
		phi_out = M_PI_2;
		x_o = 35.4648;
		y_o = x_o;
		r = 25.4648;
		dir = EDir_Left;
		len = 40.0;
		TrackPiece piece(x_start,y_start,len,phi_in,phi_out,dir);
		TestCtor(x_start,y_start,x_o,y_o,r,phi_in,phi_out,len,dir,"Testing CTor_1 left curve",10,piece);
	}
	{
		phi_out = -M_PI_2;
		y_o = y_start - r;
		r = 25.4648;
		dir = EDir_Right;
		TrackPiece piece(x_start,y_start,len,phi_in,phi_out,dir);
		TestCtor(x_start,y_start,x_o,y_o,r,phi_in,phi_out,len,dir,"Testing CTor_1 right curve",10,piece);
	}
	
	/*
	TestCtor(10.0,10.0,10.0,40.5,0.0,M_PI_2,M_PI_2,30.5,EDir_Straight,"Testing CTor_2 straight up",10);
	TestCtor(10.0,10.0,40.5,10.0,0.0,0.0,0.0,30.5,EDir_Straight,"Testing CTor_2 straight right",10);
	TestCtor(10.0,10.0,35.4648,35.4648,25.4648,0.0,M_PI_2,40.0,EDir_Left,"Testing CTor_2 left curve",10);
	TestCtor(10.0,10.0,35.4648,-15.4648,25.4648,0.0,-M_PI_2,40.0,EDir_Right,"Testing CTor_2 right curve",10);
	*/
	PrintTestName("Testing CTor_2 Straight");
	{
		TrackPiece::TPair Start;
		TrackPiece straight_piece(x_start,y_start,x_o,y_o,phi_in,phi_out,EDir_Straight);
		straight_piece.CalcEndPoint(x,y);
		Start = straight_piece.getStartPoint();
		std::cout << std::setfill(' ') << std::setw(12) << " " << std::setw(12) << std::left << "Radius" << "| " << std::setw(12) << "Xout" << "| "<< std::setw(12)<< std::setw(12) << "Yout" << "| " << std::setw(12) << "Xin"  << "| " << std::setw(12) << "Yin" << std::endl;
		std::cout << std::setw(12) << "Expected:" << std::setw(12) << r << "| " << std::setw(12) << x_o << "| " << std::setw(12) << y_o << "| " << std::setw(12) << x_start << "| " << std::setw(12) << y_start << std::endl;
		std::cout << std::setw(12) << "Real:" << std::setw(12) << straight_piece.getRadius() << "| " << std::setw(12) << x << "| " << std::setw(12) << y << "| " << std::setw(12) << Start.first << "| " << std::setw(12) << Start.second << std::endl;
	}
	return 0;
}

/*

	TrackPiece(double const x, double const y, double const len, double const angle_i, double const angle_o, EDir const direction);
	TrackPiece(double const x, double const y, double const x_o, double const y_o, double const angle_i, double const angle_o, EDir const direction);
	
	void CalcEndPoint(double &x, double &y) const;
	TPair const& getStartPoint(void) const;
	double const getRadius(void) const;
	TPair const& getAngles(void) const;
	double const getAngle(void) const;
	
	void CalcPos(double &x, double &y, double const len) const;*/

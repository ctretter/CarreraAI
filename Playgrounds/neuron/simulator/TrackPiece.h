/*
 * 	author: David Kahlbacher.
 */

#pragma once

#include <utility>

/*
 * 	Enumeration type for direction information of the TrackPiece.
 */
enum EDir {
	EDir_Right,
	EDir_Left,
	EDir_Straight,
};

/*
 * 	This class represents a piece of the whole race track. It is able
 * 	to calculate the end point of itself. There are 2 CTors for different
 * 	input methods.
 * 	This class stores information about the Radius (0 in case of a straight
 * 	piece), the start point, the direction of the curve, the length and
 * 	the angles (input, output). All other properties of the track piece
 * 	is calculated (end point, angle (output-input) and current position.
 */
 
class TrackPiece{
public:
	
	/*
	 * 	Constant for 2*PI.
	 */
	static double const PI_2;
	/*
	 * 	Constant for Threshold for double comparison.
	 * 	Value is 0.01 (1 cm).
	 */
	static double const Threshold;
	typedef std::pair<double,double> TPair;
	
	/*
	* 	CTor_1: Inputs:
	* 			x,y: Absolute coordinates of the start point.
	* 			len: Length of the track piece.
	* 			angle_i, angle_o: On- and outcoming angle. This angles
	* 					are supposed to be relative to 0 radians in the 
	* 					first quadrant and and the unit is radians.
	* 			direction: The direction of the track piece.
	*/
	TrackPiece(double const x, double const y, double const len, double const angle_i, double const angle_o, EDir const direction);
	
	/*
	 *	CTor_2: Inputs:
	 * 			x_o, y_o: End point coordinates. 	
	 * 	Informations can be extracted from CTor_1 comments.
	 */
	TrackPiece(double const x, double const y, double const x_o, double const y_o, double const angle_i, double const angle_o, EDir const direction);
	
	/*
	 * 	CalcEndPoint: Calculates the end point of this track piece.
	 * 	Parameters:
	 * 			x, y: These are the coordinates of the calculated end
	 * 					point. These parameters are output parameters and
	 * 					they will be overwritten by this method.
	 */
	void CalcEndPoint(double &x, double &y) const;
	
	/*
	 * 	IsOnTrack: Checks if the point is on this track piece.
	 * 	Inputs:
	 * 			x, y: These are the coordinates of the point which
	 * 					is checked. 
	 */
	bool IsOnTrack(double const x, double const y) const;
	
	/*
	 * 	get*: Returns a reference to the member included in the name.
	 */
	TPair const& getStartPoint(void) const;
	double const getRadius(void) const;
	TPair const& getAngles(void) const;
	double const getAngle(void) const;
	double const getLen(void) const;
	
	/*
	 * 	CalcPos: Calculates the current position on this track piece.
	 * 	Inputs:
	 * 			len: Length relative to the start point of this track piece.
	 * 	Parameters:
	 * 			x, y: These are the coordinates of the calculated position.
	 * 					These parameters are output parameters and they
	 * 					will be overwritten by this method.
	 */
	void CalcPos(double &x, double &y, double const len) const;
	
	/*
	 * 	Virtual DTor if someone wants to inherit from this class.
	 */
	virtual ~TrackPiece(){};
	
	
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

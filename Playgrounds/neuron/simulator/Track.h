/*
 * 	author: David Kahlbacher.
 */

#pragma once

#include "TrackPiece.h"
#include <vector>

class Track {
public:
	typedef std::vector<TrackPiece> TTrack;
	
	void Push_Back(TrackPiece & piece);
	void Pop_Back(void);
	void Insert_At(TrackPiece & piece, size_t const pos);
	void Clear(void);
	void Remove(size_t const pos);
	void Remove(TrackPiece const& piece);
	size_t getPieceCount(void) const;
	TTrack const& getTrack(void) const;
	TTrack & getTrack(void);
	
	double getLen(void) const;
	void CalcPos(double &x, double &y, double const len) const;
	double getRadius(double const x, double const y) const;
	double getRadius(double const len) const;
	
	virtual ~Track(){}
	
private:
	TTrack mTrack;
};

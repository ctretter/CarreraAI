#include "Correlation.h"
#include <algorithm>
#include <iostream>

/*
 * @brief Cross-correlation function which searches pattern in a route. Rotates route over pattern and looks for best match.
 *
*/
std::vector<distanceYawRate_t>::iterator GetPatternPosition(std::vector<distanceYawRate_t>& track, std::vector<double> pattern, double const distance, size_t const shift) {
	// Find position where distance matches
	auto positionIterator = track.begin();
	while(positionIterator->distance < distance && positionIterator != track.end()) {
		++positionIterator;
	}

	// Calculate average for pattern
	double patternAverage = 0;
    for(auto it = pattern.begin(); it != pattern.end(); it++) {
    	patternAverage += *it;
    }
    patternAverage /= pattern.size();

	// Move iterator left by "shift" and pattern.size()
	auto searchStartIterator = positionIterator;
	for(size_t i = 0; i < (shift + pattern.size()); ++i) {
		if(searchStartIterator == track.begin()) {
			searchStartIterator = track.end();
		}
		--searchStartIterator;
	}

	double sum = 0;
	double maxSum = std::numeric_limits<double>::min();
	auto matchIterator = positionIterator;
	for(size_t s = 0; s < 2*shift; ++s) {
		// Calculate average for this part of the route
		double routeAverage = 0;
		auto routeIterator = searchStartIterator;
	    for(size_t i = 0; i<pattern.size(); i++) {
	    	routeAverage += routeIterator->yawRate;
	    	++routeIterator;
			if(routeIterator == track.end()) {
				routeIterator = track.begin();
			}
	    }
	    routeAverage /= track.size();

		sum = 0;
		routeIterator = searchStartIterator;
		auto patternIterator = pattern.begin();
		while(patternIterator != pattern.end()) {
			sum += (*patternIterator - patternAverage) * (routeIterator->yawRate - routeAverage);
			++routeIterator;
			// wrap around
			if(routeIterator == track.end()) {
				routeIterator = track.begin();
			}
			++patternIterator;
		}
		if(sum > maxSum) {
			maxSum = sum;
			matchIterator = routeIterator;
		}
		searchStartIterator++;
		if(searchStartIterator == track.end()) {
			searchStartIterator = track.begin();
		}
	}

	return matchIterator;
}

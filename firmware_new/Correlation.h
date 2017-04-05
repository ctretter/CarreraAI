#ifndef CORRELATION_H
#define CORRELATION_H

#include <vector>
#include <stdlib.h>
#include "main.h"

std::vector<distanceYawRate_t>::iterator GetPatternPosition(std::vector<distanceYawRate_t>& track, std::vector<double> pattern, double const distance, size_t const shift);

#endif

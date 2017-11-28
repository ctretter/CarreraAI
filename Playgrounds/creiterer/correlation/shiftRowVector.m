function shiftedVector = shiftRowVector(vector, n)
    shiftedVector = circshift(vector', n)';
    
    if ((n > length(vector)) || (n < -length(vector)))
        shiftedVector = zeros(1,length(vector));
    elseif (n > 0)
        shiftedVector(1 : n) = 0;
    elseif (n < 0)
        shiftedVector(length(vector) + n + 1 : end) = 0;
    end
end
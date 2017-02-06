%% inputs: h, a vector of height measured in inches
%          w, a vector of weight measured in lbs
function [bmi] = bodyMassIndex(weight, height)
bmi = weight ./ (height.^2) * 703;
function kern = polyardKernExpandParam(kern, params)


% POLYARDKERNEXPANDPARAM Create kernel structure from POLYARD kernel's parameters.
% FORMAT
% DESC returns a automatic relevance determination polynomial kernel structure filled with the
% parameters in the given vector. This is used as a helper function to
% enable parameters to be optimised in, for example, the NETLAB
% optimisation functions.
% ARG kern : the kernel structure in which the parameters are to be
% placed.
% ARG param : vector of parameters which are to be placed in the
% kernel structure.
% RETURN kern : kernel structure with the given parameters in the
% relevant locations.
%
% SEEALSO : polyardKernParamInit, polyardKernExtractParam, kernExpandParam
%
% COPYRIGHT : Neil D. Lawrence, 2005, 2006

% KERN


kern.weightVariance = params(1);
kern.biasVariance = params(2);
kern.variance = params(3);
kern.inputScales = params(4:end);

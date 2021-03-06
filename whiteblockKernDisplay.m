function whiteblockKernDisplay(kern, spacing)

% WHITEBLOCKKERNDISPLAY Display parameters of the WHITEBLOCK kernel.
% FORMAT
% DESC displays the parameters of the white noise block kernel and the
% kernel type to the console.
% ARG kern : the kernel to display.
%
% FORMAT does the same as above, but indents the display according
% to the amount specified.
% ARG kern : the kernel to display.
% ARG spacing : how many spaces to indent the display of the kernel by.
%
% SEEALSO : whiteblockKernParamInit, modelDisplay, kernDisplay
%
% COPYRIGHT : Mauricio A. Alvarez, 2010

% KERN


if nargin > 1
    spacing = repmat(32, 1, spacing);
else
    spacing = [];
end
spacing = char(spacing);
for i=1:kern.nout
    fprintf(spacing);
    fprintf('White Noise Variance %d: %2.4f\n', i, kern.variance(i))
end

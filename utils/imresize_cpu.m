function im = imresize_cpu(im, varargin)
% Since matlab version less than 8.3 does not support imresize for gpu array, use this function instead
if ~existsOnGPU(im)
    im = imresize(im, varargin{:});
    return;
end
if verLessThan('matlab', '8.3')
    im = gather(im);
    im = imresize(im, varargin{:});
    im = gpuArray(im);
else
    im = imresize(im, varargin{:});
end
end
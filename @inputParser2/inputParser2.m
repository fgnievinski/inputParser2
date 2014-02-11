function inPar2 = inputParser2 (varargin)
  if ~is_octave(),  inPar2 = inputParser(varargin{:});  return;  end
  persistent counter
  if isempty (counter),  counter = 1;  end
  %counter % DEBUG
  inPar = inputParser (varargin{:});
  inputParserStore ('push', counter, inPar);
  inPar2 = struct ('counter',counter);
  inPar2 = class (inPar2, 'inputParser2');
  counter = counter + 1;
end


function inPar = reclass (inParOld, inParNew)
  assert(isa(inParOld, 'inputParser'));
  if isa(inParNew, 'inputParser')
    inPar = inParNew;
  else
    assert(isa(inParNew, 'struct'));
    inPar = class(inParNew, 'inputParser');
  end
end


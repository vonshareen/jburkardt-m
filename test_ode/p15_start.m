function [ t_start, y_start ] = p15_start ( neqn )

%*****************************************************************************80
%
%% P15_START returns the starting point for problem p15.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    23 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NEQN, the number of equations.
%
%    Output, real T_START, Y_START(NEQN,1), the initial data.
%
  y_start = zeros ( neqn, 1 );

  t_start = 0.0;
  y_start = [ ... 
   3.42947415189; ...
   3.35386959711; ...
   1.35494901715; ...
   6.64145542550; ...
   5.97156957878; ...
   2.18231499728; ...
  11.2630437207; ...
  14.6952576794; ...
   6.27960525067; ...
   -30.1552268759; ...
   1.65699966404; ...
   1.43785752721; ...
   -21.1238353380; ...
  28.4465098142; ...
  15.3882659679; ...
  -0.557160570446; ...
   0.505696783289; ...
   0.230578543901; ...
  -0.415570776342; ...
   0.365682722812; ...
   0.169143213293; ...
  -0.325325669158; ...
   0.189706021964; ...
   0.0877265322780; ...
  -0.0240476254170; ...
  -0.287659532608; ...
  -0.117219543175; ...
  -0.176860753121; ...
  -0.216393453025; ...
  -0.0148647893090 ];

  return
end

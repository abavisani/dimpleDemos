%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Copyright 2012 Analog Devices, Inc.
%
%   Licensed under the Apache License, Version 2.0 (the "License");
%   you may not use this file except in compliance with the License.
%   You may obtain a copy of the License at
%
%       http://www.apache.org/licenses/LICENSE-2.0
%
%   Unless required by applicable law or agreed to in writing, software
%   distributed under the License is distributed on an "AS IS" BASIS,
%   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%   See the License for the specific language governing permissions and
%   limitations under the License.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GP5Benchmarks.addConstructor('stereovision', @stereovision);

results = compareSolvers(...
    'graphConstructor', 'stereovision',...
    'itr', 3,...
    'solver', 'sumproduct',...
    'depth',75, ...
    'width', 13, ...
    'height', 13, ...
    'k', 0, ...
    'damping', 0, ...
    'scheduler', 'FloodingScheduler', ...
    'displayTimeLogs',true ...
);

pc = results.get('IntelMS');
gp5 = results.get('BehavioralMS');
pc/gp5
// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

// contract that storage temperature and status
contract WeatherOracle {
  // mapping (idOfTemperature => temperature) public jobResults;
  mapping (uint256 => uint256) public jobResults;
  // mapping (id => boolean) public jobStatus;
  mapping (uint256 => bool) public jobStatus;

  uint256 public jobId; // id 

  event NewJob(string lat, string lon, uint256 jobId);

  function getWather(string memory lat, string memory lon ) external {
    emit NewJob(lat, lon, jobId);
    jobId++;
  }

  function updateWather(uint256 temp, uint256 jobId_) external {
    jobResults[jobId_] = temp;  
    jobStatus[jobId_] = true;
  }
}
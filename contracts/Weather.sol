// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./WeatherOracle.sol";

contract Weather{
  WeatherOracle COORDINATOR;
  uint256 public tempResult;

  constructor(WeatherOracle COORDINATOR_){
    COORDINATOR=  COORDINATOR_;
  }

  function getWeather(string memory lat, string memory lon) external {
    COORDINATOR.getWather(lat, lon);
  }

  function temp() external {
    uint256 jobId = COORDINATOR.jobId();
    tempResult = COORDINATOR.jobResults(jobId);
  }
}
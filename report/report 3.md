# Enterprise Linux Lab Report

- Student name: Cedric Denoo
- Github repo: <https://github.com/HoGentTIN/elnx-1920-ha-cdenoo.git>

Describe the goals of the current iteration in a short sentence.

## Requirements

- list requirements for this iteration. Use [S.M.A.R.T.](https://en.wikipedia.org/wiki/SMART_criteria) criteria!

## Test plan

How are you going to verify that the requirements are met? The test plan is a detailed checklist of actions to take, including the expected result for each action, in order to prove your system meets the requirements. Part of this is running the automated tests, but it is not always possible to validate *all* requirements throught these tests.

## Documentation

- Test setup before continuing
- Tried to up the server, but apparently installing docker-compose via pip does no longer work
  - Fix: replaced pip installation by curl download and install
- Compare FOSS load testers
  - Gatling (great visualizer)
  - JMeter (java based application - easy to install and use)
- Chose JMeter and installed on host system
- Installed cockpit for local system monitoring
- With 10 concurrent users
  - CPU: low usage
  - Memory: low usage
  - Disk: low usage
  - Network: low usage
- With 100 concurrent users
  - CPU: 
  - Memory: 
  - Disk: 
  - Network: 
- With 1000 concurrent users
  - CPU: 
  - Memory: 
  - Disk: 
  - Network: 


## Test report

The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Resources

List all sources of useful information that you encountered while completing this assignment: books, manuals, HOWTO's, blog posts, etc.

- [Docker Swarm](https://docs.docker.com/get-started/part4/)
# SailPoint IdentityIQ Docker

> ⚠ This repository contains the docker configuration files, to build SailPoint IdentityIQ (IIQ). It does not contain the binary files for the product. SailPoint IdentityIQ is a proprietary product and must be downloaded form [SailPoint Compass Community](https://community.sailpoint.com/).

## Features

- [x] Maven wrapper on top of ANT build
- [ ] Select Database (MySQL,~~Oracle~~,~~MSSQL Server~~).

## Prerequisites

- JDK version specified by the SailPoint requirmemnts doc.
- Apache ANT and Maven.
- Download IdentityIQ (identityiq.war) from [here](https://community.sailpoint.com/t5/IdentityIQ-Server-Software/ct-p/IdentityIQ).
- Download the latest Services Standard Build (SSB) from [here](https://community.sailpoint.com/t5/Professional-Services/Services-Standard-Build-SSB-v7/ta-p/190496).

## Setup

- Unzip and copy the content of SSB into the `ssb` folder.
- Update `build.properties` variables (`IIQVersion`, `IIQPatchLevel`, etc).
- Copy `identityiq-x.x.war` into the `ssb/build/ga` folder.
- Set `SPTARGET` environment variable.
  - Windows: `SET SPTARGET=dev`
  - Linux: `EXPORT SPTARGET=dev`
- Run the build script.
  - `sh build.sh`
- Start Docker containers
  - `docker compose up`

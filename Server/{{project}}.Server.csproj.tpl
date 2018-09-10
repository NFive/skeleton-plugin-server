﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProjectGuid>{{serverprojectguid}}</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>{{org}}.{{project}}.Server</RootNamespace>
    <AssemblyName>{{org}}.{{project}}.Server.net</AssemblyName>
    <TargetFrameworkVersion>v4.5.2</TargetFrameworkVersion>
    <FileAlignment>512</FileAlignment>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <DebugSymbols>false</DebugSymbols>
    <DebugType>none</DebugType>
    <Optimize>false</Optimize>
    <OutputPath>..\</OutputPath>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <AllowedReferenceRelatedFileExtensions>
      .allowedextension
    </AllowedReferenceRelatedFileExtensions>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <DebugSymbols>false</DebugSymbols>
    <DebugType>none</DebugType>
    <Optimize>true</Optimize>
    <OutputPath>..\</OutputPath>
    <DefineConstants>TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <AllowedReferenceRelatedFileExtensions>
      .allowedextension
    </AllowedReferenceRelatedFileExtensions>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="CitizenFX.Core, Version=0.0.0.0, Culture=neutral, processorArchitecture=AMD64">
      <HintPath>..\packages\CitizenFX.Server.1.0.0.752\lib\net452\CitizenFX.Core.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="EntityFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089, processorArchitecture=MSIL">
      <HintPath>..\packages\EntityFramework.6.2.0\lib\net45\EntityFramework.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="EntityFramework.SqlServer, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089, processorArchitecture=MSIL">
      <HintPath>..\packages\EntityFramework.6.2.0\lib\net45\EntityFramework.SqlServer.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="JetBrains.Annotations, Version=2018.2.1.0, Culture=neutral, PublicKeyToken=1010a0d8d6380325, processorArchitecture=MSIL">
      <HintPath>..\packages\JetBrains.Annotations.2018.2.1\lib\net20\JetBrains.Annotations.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="MySql.Data, Version=8.0.12.0, Culture=neutral, PublicKeyToken=c5687fc88969c44d, processorArchitecture=MSIL">
      <HintPath>..\packages\MySql.Data.8.0.12\lib\net452\MySql.Data.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="MySql.Data.EntityFramework, Version=8.0.12.0, Culture=neutral, PublicKeyToken=c5687fc88969c44d, processorArchitecture=MSIL">
      <HintPath>..\packages\MySql.Data.EntityFramework.8.0.12\lib\net452\MySql.Data.EntityFramework.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="Newtonsoft.Json, Version=11.0.0.0, Culture=neutral, PublicKeyToken=30ad4fe6b2a6aeed, processorArchitecture=MSIL">
      <HintPath>..\packages\Newtonsoft.Json.11.0.2\lib\net45\Newtonsoft.Json.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="NFive.SDK.Core.net, Version=0.1.0.11, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\packages\NFive.SDK.Core.0.1.0.11\lib\net452\NFive.SDK.Core.net.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="NFive.SDK.Server.net, Version=0.1.0.9, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\packages\NFive.SDK.Server.0.1.0.9\lib\net452\NFive.SDK.Server.net.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="System" />
  </ItemGroup>
  <ItemGroup>
    <Compile Include="Configuration.cs" />
    <Compile Include="Migrations\Configuration.cs" />
    <Compile Include="Properties\AssemblyInfo.cs" />
    <Compile Include="{{project}}Controller.cs" />
    <Compile Include="Storage\StorageContext.cs" />
  </ItemGroup>
  <ItemGroup>
    <None Include="packages.config" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\Shared\{{project}}.Shared.csproj">
      <Project>{{sharedprojectguid}}</Project>
      <Name>{{project}}.Shared</Name>
      <Private>False</Private>
    </ProjectReference>
  </ItemGroup>
  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets" />
</Project>

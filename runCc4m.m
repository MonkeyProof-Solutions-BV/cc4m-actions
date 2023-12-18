function runCc4m(downloadLocation)
    filePath = websave('CC4M.mltbx', downloadLocation);
    matlab.addons.install(filePath);
    sarif = monkeyproof.cc4m.start('-pwd', '-recursive', '-generateSarif');
    movefile(sarif, 'report.sarif.json');
    exit(0);
end

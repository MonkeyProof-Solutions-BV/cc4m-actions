function runCc4m(downloadLocation)
    filePath = websave('CC4M.mltbx', downloadLocation);
    matlab.addons.install(filePath);
    try
        monkeyproof.codetools.CodeAnalyzer.LicenseChecker.checkout()
    catch ME
        fprintf(1, '%s\n', ME.getReport());
    end
    %sarif = monkeyproof.cc4m.start('-pwd', '-recursive', '-generateSarif');
    %movefile(sarif, 'report.sarif.json');
    %exit(0);
end

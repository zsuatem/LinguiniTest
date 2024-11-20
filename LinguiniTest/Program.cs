using System.Globalization;
using Linguini.Bundle;
using Linguini.Bundle.Builder;
using Linguini.Shared.Types.Bundle;

namespace LinguiniTest;

class Program
{
    static void Main(string[] args)
    {
        using var streamReader = new StreamReader("test.pl.ftl");
        
        
        var bundler = LinguiniBuilder.Builder()
            .CultureInfo(new CultureInfo("pl"))
            .AddResource(streamReader)
            .UncheckedBuild();

        var phrases = new[]
        {
            bundler.GetAttrMessage("tabs-close-tooltip", ("tabCount", (FluentNumber)5)),
            bundler.GetAttrMessage("about", ("case", (FluentString)"locative")),
            
            bundler.GetAttrMessage("brand-name"), // nie można używać w interpolacji fraz trzeba terminów
            bundler.GetAttrMessage("signedout-title"), // interpolacja przypadku
            bundler.GetAttrMessage("about", ("case", (FluentString)"locative")),
            bundler.GetAttrMessage("messages", ("case", (FluentString)"locative"), ("msgCount", (FluentNumber)4)), // podawanie kilku parametrów i kolejność nie ma znaczenia
            
            bundler.GetAttrMessage("time-elapsed", ("duration", (FluentNumber)12345.678f)),
        };

        foreach (var phrase in phrases)
        {
            Console.WriteLine(phrase);
        }
        
        
        Console.ReadKey();
    }
}
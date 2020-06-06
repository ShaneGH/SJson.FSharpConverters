# SJson.FSharpConverters
JsonConverters and Factories for FSharp types in System.Text.Json

Handles

* Option
* List
* Record Types
* Discriminated Unions
* Tuple

## Install

You can

1. Just copy past the source code: https://github.com/ShaneGH/SJson.FSharpConverters/blob/master/SJson.FSharpConverters/FSharpConverters.fs
1. Get the Nuget package: coming soon

## Use

```F#
// open SJson.FSharpConverters
// open System.Text.Json

type ExampleType =
    {
        Value: string option
    }

let options =
    let opt = JsonSerializerOptions()
    
    Factories.Build()
    |> List.map opt.Converters.Add
    |> (fun _ -> opt)
    
let value = { Value = Some "Hi" }
    
let json = JsonSerializer.Serialize (value, options)
let valueAfter = JsonSerializer.Deserialize<ExampleType> (json, options)
```
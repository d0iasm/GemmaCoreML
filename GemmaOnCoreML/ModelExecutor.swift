//
//  ModelExecutor.swift
//  GemmaOnCoreML
//
//  Created by Asami Doi on 23/08/2024.
//

import Foundation
import TensorFlowLite

func execute() {
    var options = CoreMLDelegate.Options()
    options.enabledDevices = .all
    
    let coreMLDelegate = CoreMLDelegate(options: options)!
    
    let modelPath = Bundle.main.path(forResource: "gemma-1.1-2b-it-cpu-int4", ofType: "bin")!
    
    do {
        let _interpreter = try Interpreter(modelPath: modelPath,
                                          delegates: [coreMLDelegate])
        
    } catch {
        print("Error: \(error)")
    }
    
}

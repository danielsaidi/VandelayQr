//
//  ViewController.swift
//  VandelayQRDemo
//
//  Created by Daniel Saidi on 2019-10-09.
//

import UIKit
import Vandelay
import VandelayQr

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLocalFile()
        generateQrCode()
    }
    
    private let fileName = "testdata.json"
    
    private var fileUrl: URL {
        URL(string: "http://danielsaidi.com/apps/vandelay/testdata.json")!
    }
    
    private var importer: QrCodeImporter?
    
    @IBAction func scanQrCode(_ sender: Any) {
        importer = QrCodeImporter(fromViewController: self)
        importer?.importString { (result) in
            self.handleImportResult(result)
        }
    }
}

private extension ViewController {
    
    func generateQrCode() {
        let generator = StandardQrCodeGenerator(scale: 5)
        let result = try? generator.generateQrCode(with: fileUrl)
        guard let code = result else { return }
        let image = UIImage(cgImage: code)
        let view = UIImageView(image: image)
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    func handleImportResult(_ result: ImportResult) {
        importer = nil
        if let error = result.error {
            return alertError("Import failed with error: \(error.localizedDescription)")
        }
        guard let string = result.string else {
            return alertError("Import failed due to missing data")
        }
        guard let data = string.data(using: .utf8) else {
            return alertError("Import failed due to corrupt data")
        }
        guard let object = try? JSONDecoder().decode(TestData.self, from: data) else {
            return alertError("Import failed due to failing decode")
        }
        self.alert(title: "Success!", message: "Successfully imported object from  with name \"\(object.name)\"")
    }
    
    func prepareLocalFile() {
        let data = TestData(name: "Test Data")
        let exporter = FileExporter(fileName: fileName)
        exporter.exportString(for: data, encoder: JSONEncoder()) { (result) in
            if let error = result.error {
                return print("[ERROR] Local file preparation failed with \(error)")
            }
            print("[SUCCESS] Local file was successfully written to \(result.filePath ?? "-")")
            self.verifyLocalFile()
        }
    }
    
    func verifyLocalFile() {
        let importer = FileImporter(fileName: self.fileName)
        importer.importString { result in
            if let error = result.error {
                return print("[ERROR] Failed to read local file - \(error)")
            }
            print("[SUCCESS] Local file was successfully imported")
        }
    }
}

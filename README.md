# CameraPreview

`SwiftUI` adaption of `AVCaptureVideoPreviewLayer`.

Gives the ability to use the camera preview in SwiftUI views.

E.g.
```
import SwiftUI
import AVFoundation
import CameraPreview

struct MyView: View {
    
    private let captureSession = AVCaptureSession()
    
    init() {
        // add an input
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        guard let captureDeviceInput = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        guard self.captureSession.canAddInput(captureDeviceInput) else { return }
        self.captureSession.addInput(captureDeviceInput)
    }
    
    var body: some View {
        CameraPreview(session: self.captureSession)
            .onAppear {
                self.captureSession.startRunning()
            }
            .onDisappear {
                self.captureSession.stopRunning()
            }
    }
}
```

//
//  CalcStickerBrowserViewController.swift
//  CalcStickers
//
//  Created by Gomes, Bruce on 10/3/18.
//  Copyright © 2018 Gomes, Bruce. All rights reserved.
//

import Foundation
import UIKit
import Messages

class CalcStickerBrowserViewController: MSStickerBrowserViewController {

    var stickers = [MSSticker]() // array to hold stickers

    // change the coller of browser view
    func changeBrowserViewBackgroundColor(color: UIColor){
        stickerBrowserView.backgroundColor = color 
    }
    
// create stickers
    func loadStickers(){
        
        createSticker(asset: "01_17_NIV", localizedDescription: "01_17_NIV")
        createSticker(asset: "06-05", localizedDescription: "06-05")
       // createSticker(asset: "https://1drv.ms/u/s!AhcPMX0u6ptArCw3zhbVNVyVNiX7", localizedDescription: "elite")
        // another sticker here .....
    }


    func createSticker(asset: String, localizedDescription: String) {
        guard let stickerPath = Bundle.main.path(forResource: asset, ofType:"jpg") else {  // create bundle for assets
            print("could not create the sticker for", asset)
            return
        }
        
        //let stickerURL = URL(fileURLWithPath: "https://1drv.ms/u/s!AhcPMX0u6ptArCw3zhbVNVyVNiX7") // pointing to asset on disk
        let stickerURL = URL(fileURLWithPath: stickerPath) // pointing to asset on disk
        
        let sticker: MSSticker
        do{
            try sticker = MSSticker(contentsOfFileURL: stickerURL, localizedDescription: localizedDescription) // initialize sticker w/ localized description
            stickers.append(sticker)                                                                           // add to array
        }catch{
            print(error)
            return
        }
    }
    
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {   // number of stickers we have stickers
        return stickers.count;
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker { // the view that hold
        return stickers[index]
    }
}

//
//  MVVMCDetailViewModel.swift
//  MVVM-C
//
//  Created by Scotty on 21/05/2016.
//  Copyright © 2016 Streambyte Limited. All rights reserved.
//

import Foundation


class MVVMCDetailViewModel: DetailViewModel
{
    weak var viewDelegate: DetailViewModelViewDelegate?
    weak var coordinatorDelegate: DetailViewModelCoordinatorDelegate?
    
    private(set) var detail: DataItemViewModel? {
        didSet {
            viewDelegate?.detailDidChange(viewModel: self)
        }
    }
    
    var model: DetailModel? {
        didSet {
            model?.detail({ (item) in
                self.detail = MVVMCDataItemViewModel(withDataItem: item)
            })
        }
    }
    
    func done() {
        coordinatorDelegate?.detailViewModelDidEnd(self)
    }
    
}

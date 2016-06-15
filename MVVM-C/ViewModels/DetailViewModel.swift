//
//  DetailViewModel.swift
//  MVVM-C
//
//  Created by Scotty on 21/05/2016.
//  Copyright © 2016 Streambyte Limited. All rights reserved.
//

import Foundation

protocol DetailViewModelViewDelegate: class
{
    func detailDidChange(viewModel viewModel: DetailViewModel)
}


protocol DetailViewModelCoordinatorDelegate: class
{
    func detailViewModelDidEnd(viewModel: DetailViewModel)
}

protocol DetailViewModel
{
    var model: DetailModel? { get set }
    var viewDelegate: DetailViewModelViewDelegate? { get set }
    var coordinatorDelegate: DetailViewModelCoordinatorDelegate? { get set}
    var detail: DataItemViewModel? { get }
    func done()
}

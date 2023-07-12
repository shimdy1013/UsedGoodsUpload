//
//  DetailWriteFormCellViewModel.swift
//  UsedGoodsUpload
//
//  Created by 심두용 on 2023/06/30.
//

import RxSwift
import RxCocoa

struct DetailWriteFormCellViewModel {
    // View -> ViewModel
    let contentValue = PublishRelay<String?>()
}

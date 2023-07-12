//
//  PriceTextFieldCellViewModel.swift
//  UsedGoodsUpload
//
//  Created by 심두용 on 2023/06/27.
//

import RxSwift
import RxCocoa

struct PriceTextFieldCellViewModel {
    let disposeeBag = DisposeBag()
    
    // ViewModele -> View
    let showFreeShareButton: Signal<Bool>
    let resetPrice: Signal<Void>
    
    // View -> ViewModel
    let priceValue = PublishRelay<String?>()
    let freeShareButtonTapped = PublishRelay<Void>()
    
    init() {
        self.showFreeShareButton = Observable
            .merge(
                priceValue.map { $0 == "0" },
                freeShareButtonTapped.map { _ in false }
            )
            .asSignal(onErrorJustReturn: false)
        
        self.resetPrice = freeShareButtonTapped
            .asSignal(onErrorSignalWith: .empty())
    }
}

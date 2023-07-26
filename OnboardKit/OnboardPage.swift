//
//  OnboardPage.swift
//  OnboardKit
//

import Foundation
import UIKit

public typealias OnboardPageCompletion = ((_ success: Bool, _ error: Error?) -> Void)
public typealias OnboardPageAction = (@escaping OnboardPageCompletion) -> Void

public struct OnboardPage {
  /// The title text used for the top label of the onboarding page
  let title: String

  /// An optional image to be used in the onboarding page
  ///
  /// - note: If no image is used, the description label will adjust fill the empty space
  let imageName: String?

  /// An optional description text to be used underneath the image
  ///
  /// - note: If no description text is used, the image will adjust fill the empty space
  let description: String?

  /// The title text to be used for the secondary button that is used to advance to the next page
  let advanceButtonTitle: String?

  /// The title text to be used for the optional action button on the page
  ///
  /// - note: If no action button title is set, the button will not appear
  let actionButtonTitle: String?

  /// The action to be called when tapping the action button on the page
  ///
  /// - note: calling the completion on the action will advance the onboarding to the next page
  let action: OnboardPageAction?
  let showSkipButton: Bool
  let btnBackGroundColor: UIColor
  let imageBackgroundColor: UIColor
  let imageBorderwidth: CGFloat
  let imageBorderColor: UIColor

  public init(title: String,
              imageName: String? = nil,
              description: String?,
              advanceButtonTitle: String? = nil,
              actionButtonTitle: String? = nil,
              action: OnboardPageAction? = nil,
              showSkipButton: Bool = true,
              btnBackGroundColor: UIColor = UIColor(red: 126/255.0, green: 21/255.0, blue: 24/255.0, alpha: 1.0),
              imageBackgroundColor: UIColor = UIColor.white.withAlphaComponent(0.4),
              imageBorderwidth: CGFloat = 0,
              imageBorderColor: UIColor = .clear) {
    self.title = title
    self.imageName = imageName
    self.description = description
    self.advanceButtonTitle = advanceButtonTitle
    self.actionButtonTitle = actionButtonTitle
    self.action = action
    self.showSkipButton = showSkipButton
    self.btnBackGroundColor = btnBackGroundColor
    self.imageBackgroundColor = imageBackgroundColor
    self.imageBorderwidth = imageBorderwidth
    self.imageBorderColor = imageBorderColor
  }
}

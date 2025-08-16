import SwiftUI

struct UpgradePill: View {
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Image(systemName: "sparkles")
                    .font(.system(size: 14, weight: .semibold))
                Text("Upgrade")
                    .font(.subheadline.bold())
            }
            .foregroundColor(.black)
            .padding(.vertical, 8)
            .padding(.horizontal, 14)
            .background(Capsule().fill(Color.yellow.opacity(0.85)))
            .overlay(Capsule().stroke(Color.black.opacity(0.08), lineWidth: 0.5))
            .shadow(color: .black.opacity(0.08), radius: 8, y: 4)
            .accessibilityLabel("Upgrade")
        }
    }
}

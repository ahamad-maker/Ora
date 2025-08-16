import SwiftUI

struct SummaryView: View {
    var title: String
    var subtitle: String
    var summary: String
    var transcript: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(title).font(.largeTitle.bold())
                Text(subtitle).foregroundStyle(.secondary)

                HStack {
                    pill("Summary", system: "list.bullet")
                    pill("Transcript", system: "text.bubble")
                    pill("Chat", system: "bubble.left.and.text.bubble.right")
                }
                .padding(.top, 6)

                Divider()

                Text("General").font(.title3.bold())
                VStack(alignment: .leading, spacing: 6) {
                    ForEach(summary.split(separator: "\n").map(String.init), id: \.self) { line in
                        HStack(alignment: .top, spacing: 8) {
                            Text("•")
                            Text(line)
                        }
                    }
                }
                .padding(.bottom, 24)

                Text("Transcript").font(.title3.bold())
                Text(transcript).fixedSize(horizontal: false, vertical: true)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }

    private func pill(_ title: String, system: String) -> some View {
        HStack(spacing: 8) {
            Image(systemName: system)
            Text(title).font(.headline)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 8)
        .background(Capsule().fill(Color.blue.opacity(0.12)))
    }
}

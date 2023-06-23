//
//  DetailEditSheet.swift
//  Scrumdinger
//
//  Created by Mike Cravey on 6/5/23.
//

import SwiftUI

struct DetailEditSheet: View {
    @Binding var scrum: DailyScrum
    @Binding var editingScrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                            scrum = editingScrum
                        }
                    }
                }
        }

    }
}

struct DetailEditSheet_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditSheet(scrum: .constant(DailyScrum.sampleData[0]), editingScrum: .constant(DailyScrum.sampleData[0]), isPresentingEditView: .constant(true))
    }
}

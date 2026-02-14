import SwiftUI

struct ContentView: View {
    @State private var output: Int = 0
    @State private var step: Int = 2

    var body: some View {
        VStack(spacing: 16) {
            // Title
            Text("Lab Exercise")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.black, lineWidth: 1)
                )
                .padding(.horizontal, 40)

          
            ZStack {
                RoundedRectangle(cornerRadius: 24)
                    .fill(Color(red: 0.98, green: 0.92, blue: 0.70))

                VStack(spacing: 18) {
                    // Logo
                    Image("gbc")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .padding(.top, 10)
                        

                    // Output box
                    Text("\(output)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: 90, height: 36)
                        .background(Color.white)
                        .cornerRadius(4)

                    // + and - buttons
                    HStack(spacing: 22) {
                        Button {
                            output -= step
                        } label: {
                            Text("-")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: 70, height: 45)
                                .background(Color.gray.opacity(0.35))
                                .cornerRadius(4)
                        }

                        Button {
                            output += step
                        } label: {
                            Text("+")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: 70, height: 45)
                                .background(Color.gray.opacity(0.35))
                                .cornerRadius(4)
                        }
                    }

                    // Reset + Step buttons
                    HStack(spacing: 18) {
                        Button {
                            output = 0
                        } label: {
                            Text("Reset")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 80, height: 36)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(4)
                        }

                        Button {
                            step = (step == 1) ? 2 : 1
                        } label: {
                            Text("Step = \(step)")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 90, height: 36)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(4)
                        }
                    }

                    Spacer(minLength: 0)
                }
                .padding(.top, 10)
                .padding(.bottom, 18)
            }
            .frame(width: 240, height: 360)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}



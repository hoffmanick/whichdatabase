library(shiny)
ui <- fluidPage(
  titlePanel("Where should I upload my data?"),
    fluidRow("What kind of data?",
    actionButton("verts", "Vertebrates", class="btn-block"),
    actionButton("pollen", "Pollen", class="btn-block"),
    actionButton("other", "Other", class="btn-block")
),
  fluidRow(textOutput("firstText"),
    uiOutput(outputId = "firstChoice")
  ),
  fluidRow(textOutput("secondText"),
         uiOutput(outputId = "secondChoice")
),
  fluidRow(textOutput("thirdText"),
         uiOutput(outputId = "thirdChoice")
),
fluidRow(textOutput("fourthText"),
         uiOutput(outputId = "fourthChoice")
)
)

server <- function(input, output, session) {
  
  observeEvent(input$verts, {
    output$firstText = renderText("Where?")
    output$firstChoice = renderUI({
      fluidRow(
      actionButton("northamv","North America", class="btn-block"),
      actionButton("latamv","Latin America", class="btn-block")
    )})
    output$secondText = renderText("")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$pollen, {
    output$firstText = renderText("Where?")
    output$firstChoice = renderUI({
      fluidRow(
        actionButton("africa","Africa", class="btn-block"),
        actionButton("europe","Europe", class="btn-block"),
        actionButton("indo","The Indo-Pacific Region", class="btn-block"),
        actionButton("japan","Japan", class="btn-block"),
        actionButton("latam","Latin America", class="btn-block"),
        actionButton("northam","North America", class="btn-block")
      )})  
    output$secondText = renderText("")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$other, {
    output$firstText = renderText("What kind?")
    output$firstChoice = renderUI({
      fluidRow(
        actionButton("biomarkers","Biomarkers", class="btn-block"),
        actionButton("charcoal","Charcoal", class="btn-block"),
        actionButton("diatoms","Diatoms", class="btn-block"),
        actionButton("insects","Insects", class="btn-block"),
        actionButton("middens","Middens", class="btn-block"),
        actionButton("ostracodes","Ostracodes", class="btn-block"),
        actionButton("plant_mac","Plant Macrofossils", class="btn-block"),
        actionButton("isotopes","Stable Isotopes", class="btn-block"),
        actionButton("amoebae","Testate Amoebae", class="btn-block"),
        actionButton("chem","Water Chemistry", class="btn-block")
        
      )})  
    output$secondText = renderText("")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$latamv, {
    output$secondText = renderText("What region of Latin America?")
    output$secondChoice = renderUI({
      fluidRow(
        actionButton("centralamv","Central America", class="btn-block"),
        actionButton("southamv","South America", class="btn-block")
        
      )}) 
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})

  })
  
  
  observeEvent(input$northamv, {
    output$secondText = renderText("Are the vertebrate fauna from Alaska?")
    output$secondChoice = renderUI({
      fluidRow(
        actionButton("yes","Yes", class="btn-block"),
        actionButton("no","No", class="btn-block")
        
      )})  
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})

  })
  
  
  observeEvent(input$africa, {
    output$secondText = renderText("Upload to the African Pollen Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$europe, {
    output$secondText = renderText("Are the pollen from the Alpine region?")
    output$secondChoice = renderUI({
      fluidRow(
        actionButton("yesv","Yes", class="btn-block"),
        actionButton("nov","No", class="btn-block")
      )})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$indo, {
    output$secondText = renderText("Upload to the Indo-Pacific Pollen Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$japan, {
    output$secondText = renderText("Upload to the Japan Pollen Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$latam, {
    output$secondText = renderText("Upload to the Latin American Pollen Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$northam, {
    output$secondText = renderText("Upload to the North American Pollen Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$charcoal, {
    output$secondText = renderText("Upload to the Neotoma Charcoal Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$insects, {
    output$secondText = renderText("Upload to the NDSU Insect Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$plant_mac, {
    output$secondText = renderText("Upload to the North American Plant Macrofossil Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$amoebae, {
    output$secondText = renderText("Upload to the Neotoma Testate Amoebae Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$biomarkers, {
    output$secondText = renderText("Upload to the Neotoma Biomarkers Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$isotopes, {
    output$secondText = renderText("Upload to the Stable Isotopes Database!")
    output$secondChoice = renderUI({})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  
  observeEvent(input$ostracodes, {
    output$secondText = renderText("Are the ostracodes marine or freshwater?")
    output$secondChoice = renderUI({
      fluidRow(
        actionButton("marine","Marine", class="btn-block"),
        actionButton("fresh","Freshwater", class="btn-block")
      )})
    output$thirdText = renderText("")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$yes, {
    output$thirdText = renderText("Upload to the Alaskan Archaeofaunas Database")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$no, {
    output$thirdText = renderText("Are the fauna from before the Pleistocene, or are they of Pleistocene age or younger?")
    output$thirdChoice = renderUI({
      fluidRow(
        actionButton("pleisto","Pleistocene or younger", class="btn-block"),
        actionButton("older","Older than the Pleistocene", class="btn-block")
      )})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$pleisto, {
    output$fourthText = renderText("Upload to the FAUNMAP database!")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$older, {
    output$fourthText = renderText("Upload to the MIOMAP database!")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$centralamv, {
    output$thirdText = renderText("Upload to the Paleo Vertebrates of Latin America Database")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$southamv, {
    output$thirdText = renderText("Upload to the ANTIGUA Database")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
  observeEvent(input$yesv, {
    output$thirdText = renderText("Upload to the Alpine Pollen Database")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$nov, {
    output$thirdText = renderText("Upload to the European Pollen Database")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  observeEvent(input$fresh, {
    output$thirdText = renderText("Upload to the North American non-marine Ostracodes Database")
    output$thirdChoice = renderUI({})
    output$fourthText = renderText("")
    output$fourthChoice = renderUI({})
  })
  
  
}
shinyApp(ui, server)
{
  en: {
    date: {
      formats: {
        no_year: lambda { |time, _| "%B #{time.day.ordinalize}" }
        with_year: lambda { |time, _| "%B #{time.day.ordinalize} %Y" }
      }
    }
  }
}

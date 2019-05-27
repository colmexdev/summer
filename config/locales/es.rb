{
  es: {
    date: {
      formats: {
        no_year: lambda { |time, _| "%e de %B" },
        with_year: lambda { |time, _| "%e de %B de %Y" }
      }
    }
  }
}

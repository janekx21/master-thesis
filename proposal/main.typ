// Using this themplate https://typst.app/universe/package/parcio-thesis

#import "@preview/parcio-thesis:0.3.1": *

#show: parcio.with(
  title: "My great thesis 222",
  author: (
    name: "Janek Winkler",
    mail: "janek.winkler@ovgu.de",
  ),
  abstract: [My abstract begins here 222.],
  thesis-type: "Master",
  date: datetime.today(),
)

#show: arabic-numbering.with(reset: true, alternate: true)

= Introduction

Hello world. This is a text thingyy.

== Motivation

Ding dings.

#appendix(reset: true)[
  Hi
]

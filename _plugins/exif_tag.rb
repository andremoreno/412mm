# -*- coding: utf-8 -*-
# A Liquid tag rof Jekyll sites that allows showing exif data.
# by: Gosuke Miyashita
#
# Example usage: {% exif /images/sample.jpg %}

#require "exifr"
require 'exifr/jpeg'

module Jekyll
  class ExifTag < Liquid::Tag
    def initialize(tag_name, file, token)
      super
      @image_file = File.expand_path "../" + "_photos/" + file.strip , File.dirname(__FILE__)
      @image_file2 = file.strip
    end

    def render(context)
      exif = EXIFR::JPEG::new(@image_file)
      <<-HTML
<a href="/photos/#{@image_file2}" class="swipebox"><img src="/photos/thumb/#{@image_file2}" alt="#{@image_file2}" /></a>
<div class="exif">#{exif.model} | #{exif.focal_length.to_f} mm | #{exif.exposure_time.to_s} sec | f/#{sprintf "%.1f", exif.f_number.to_f} | ISO: #{exif.iso_speed_ratings} <br />Date taken: #{exif.date_time_original}</div>
      HTML
    end
  end
end

Liquid::Template.register_tag('exif', Jekyll::ExifTag)

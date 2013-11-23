if SETTINGS[:column_view]
  SETTINGS[:column_view].reject { |k,v| v[:view] && v[:view] != :hosts_edit }.keys.sort.map do |k|
    after = SETTINGS[:column_view][k.to_sym][:after]
    Deface::Override.new(
      :virtual_path => "hosts/_form",
      :name => "edit_#{k}",
      :insert_bottom => "div##{after}",
      :text => "<%= text_f f, fcv_title('#{k}'), :class => \"input-xlarge\", :value => fcv_content(@host, '#{k}') %>"
    )
  end
end

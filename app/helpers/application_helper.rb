module ApplicationHelper

  def method_missing(name, *args, &block)
    if /^signin_with_(\S*)$/.match(name.to_s)
      link_to "#{$1}".capitalize, "/auth/#{$1}"
    else
      super
    end
  end
end

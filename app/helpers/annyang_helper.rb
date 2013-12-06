module AnnyangHelper
  def init_annyang(commands = {})
    commands = commands.merge(get_annyang_commands)
    raw "<script>
      var annyang_commands={};
      var linkAnnyang = function(term){
        if(annyang_commands[term]){
           window.location = annyang_commands[term];
        }
      }
      function initAnnyang(){
	if (annyang) {
          annyang_commands = {#{commands.collect{|k,v| k.split('|').collect {|key| "'#{key}': '#{v}'"} }.join(', ')}};
            if($('a[data-annyang]').length > 0){
              $('a[data-annyang]').each(function( index ) {
		var link = $(this).attr('href');
		var split_arr = $(this).attr('data-annyang').split('|');
		for (var i=0; i < split_arr.length; i++)
		  annyang_commands[split_arr[i]] = link;
              });
            }
          annyang.init({'go to *term': linkAnnyang});
          annyang.start();
        }
      }
      $(document).ready(initAnnyang);
      </script>"
  end
  def get_annyang_commands
      yml_path = File.join(Rails.root,"config/annyang.yml")
      commands_hash = YAML.load_file(yml_path) if yml_path && File.exist?(yml_path)
      commands_hash||{}
    end
end

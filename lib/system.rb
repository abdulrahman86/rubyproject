
x = 'hello1'

# def uncompress(dir, file)
#
# #   output = %x[
# #   cd #{dir}
# #   result=$((bzcat #{file} | tar x) 2>&1)
# #   if [ ! -z "$result" ]; then
# #     echo "$result"
# #     exit 1
# #   fi
# # ]
#
#   output = `cd #{dir} && ((bzcat #{file} | tar x) 2>&1)`
#
#   {:out => output, :success? => $?.success?}
# end

# dir = '/Users/abdul.sattar/Dev/tmp2/tmp4'
#
# file = '/Users/abdul.sattar/Dev/tmp2/tmp3/all'
#
# result =  `cd #{dir} && ((bzcat #{file} | tar x) 2>&1)`
#
# print result.empty?
#
#
# print result
#
# puts
#
# print $?.success?

# require 'open3'
#
#
# result = nil
#
# Open3.popen3("ls") {|stdin, stdout, wait_thr|
#     result = stdout.readlines unless wait_thr.value == 0
# }
#
# if result
#    puts result
# end

require 'date'

#puts Date.today.strftime('%Y%m%d')

x = Date.today - 3

puts (x - Date.today) == -3




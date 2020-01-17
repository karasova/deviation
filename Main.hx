class Main {
    static public function main():Void {
        var file_name:String =Sys.stdin().readLine();
        var file:String = sys.io.File.getContent(file_name);
        var source=file.split("\n");

        var sum:Float=0;
        var dev:Array<Float> = [];
        var count:Int = 0;

        for (line in source){
            sum += Std.parseInt(line);
            count++;
        }

        var m = sum / count;
        sum = 0.0;
        for (num in source) {
            sum += ((Std.parseInt(num) - m) * (Std.parseInt(num)- m));
        }
        m = Math.sqrt(sum / count);
        trace(m);
    }
}
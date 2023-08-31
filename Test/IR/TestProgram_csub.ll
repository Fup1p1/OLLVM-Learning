; ModuleID = 'IR/TestProgram.ll'
source_filename = "TestProgram.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input = dso_local global [100 x i8] zeroinitializer, align 16
@enc = dso_local global <{ [22 x i8], [78 x i8] }> <{ [22 x i8] c"\86\8A}\87\93\8BM\81\80\8AC\7FII\86q\7FbSi(\9D", [78 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [25 x i8] c"Please input your flag: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Congratulations~\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Sorry try again.\0A\00", align 1
@x = private global i32 10331
@y = private global i32 13120
@x.1 = private global i32 1924
@y.2 = private global i32 19368
@x.3 = private global i32 18951
@y.4 = private global i32 37
@x.5 = private global i32 2428
@y.6 = private global i32 3269
@x.7 = private global i32 22294
@y.8 = private global i32 17937
@x.9 = private global i32 32283
@y.10 = private global i32 10397
@x.11 = private global i32 28667
@y.12 = private global i32 10648
@x.13 = private global i32 22820
@y.14 = private global i32 31062
@x.15 = private global i32 26924
@y.16 = private global i32 10963
@x.17 = private global i32 6768
@y.18 = private global i32 29956
@x.19 = private global i32 21424
@y.20 = private global i32 10516
@x.21 = private global i32 14547
@y.22 = private global i32 10035
@x.23 = private global i32 23041
@y.24 = private global i32 32329
@x.25 = private global i32 9385
@y.26 = private global i32 6386
@x.27 = private global i32 17797
@y.28 = private global i32 18327
@x.29 = private global i32 11953
@y.30 = private global i32 29288
@x.31 = private global i32 28789
@y.32 = private global i32 22411
@x.33 = private global i32 25976
@y.34 = private global i32 22168
@x.35 = private global i32 9762
@y.36 = private global i32 10825
@x.37 = private global i32 15803
@y.38 = private global i32 18434
@x.39 = private global i32 30349
@y.40 = private global i32 28469
@x.41 = private global i32 12441
@y.42 = private global i32 12807
@x.43 = private global i32 21826
@y.44 = private global i32 19191
@x.45 = private global i32 9090
@y.46 = private global i32 6391
@x.47 = private global i32 19065
@y.48 = private global i32 23936
@x.49 = private global i32 15085
@y.50 = private global i32 13578

; Function Attrs: noinline nounwind optnone uwtable mustprogress
define dso_local void @_Z7encryptPhPc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %109, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %190

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @x, align 4
  %23 = load i32, i32* @y, align 4
  %24 = load i32, i32* @x.3, align 4
  %25 = load i32, i32* @y.4, align 4
  %26 = load i32, i32* @x.15, align 4
  %27 = load i32, i32* @y.16, align 4
  %28 = mul i32 29206, %26
  %29 = mul i32 16836, %27
  %30 = add i32 %28, %29
  %31 = add i32 %30, -970915407
  %32 = shl i32 %24, %31
  %33 = load i32, i32* @x.17, align 4
  %34 = load i32, i32* @y.18, align 4
  %35 = mul i32 32526, %33
  %36 = mul i32 8692, %34
  %37 = add i32 %35, %36
  %38 = add i32 %37, -480513517
  %39 = lshr i32 %25, %38
  %40 = or i32 %32, %39
  %41 = load i32, i32* @x.19, align 4
  %42 = load i32, i32* @y.20, align 4
  %43 = mul i32 6041, %41
  %44 = mul i32 7609, %42
  %45 = add i32 %43, %44
  %46 = add i32 %45, -208832195
  %47 = xor i32 %40, %46
  %48 = shl i32 %22, %47
  %49 = load i32, i32* @x.5, align 4
  %50 = load i32, i32* @y.6, align 4
  %51 = load i32, i32* @x.21, align 4
  %52 = load i32, i32* @y.22, align 4
  %53 = shl i32 %51, 5
  %54 = lshr i32 %52, 3
  %55 = or i32 %53, %54
  %56 = xor i32 %55, 466659
  %57 = shl i32 %49, %56
  %58 = load i32, i32* @x.23, align 4
  %59 = load i32, i32* @y.24, align 4
  %60 = mul i32 31755, %58
  %61 = mul i32 24950, %59
  %62 = add i32 %60, %61
  %63 = add i32 %62, -1538275502
  %64 = lshr i32 %50, %63
  %65 = or i32 %57, %64
  %66 = load i32, i32* @x.25, align 4
  %67 = load i32, i32* @y.26, align 4
  %68 = mul i32 27744, %66
  %69 = mul i32 20033, %67
  %70 = add i32 %68, %69
  %71 = add i32 %70, -388230455
  %72 = xor i32 %65, %71
  %73 = lshr i32 %23, %72
  %74 = or i32 %48, %73
  %75 = load i32, i32* @x.7, align 4
  %76 = load i32, i32* @y.8, align 4
  %77 = load i32, i32* @x.27, align 4
  %78 = load i32, i32* @y.28, align 4
  %79 = shl i32 %77, 5
  %80 = lshr i32 %78, 3
  %81 = or i32 %79, %80
  %82 = xor i32 %81, 571639
  %83 = shl i32 %75, %82
  %84 = load i32, i32* @x.29, align 4
  %85 = load i32, i32* @y.30, align 4
  %86 = shl i32 %84, 5
  %87 = lshr i32 %85, 3
  %88 = or i32 %86, %87
  %89 = xor i32 %88, 384622
  %90 = lshr i32 %76, %89
  %91 = or i32 %83, %90
  %92 = load i32, i32* @x.31, align 4
  %93 = load i32, i32* @y.32, align 4
  %94 = shl i32 %92, 5
  %95 = lshr i32 %93, 3
  %96 = or i32 %94, %95
  %97 = xor i32 %96, 125819
  %98 = xor i32 %91, %97
  %99 = xor i32 %74, %98
  %100 = sub nsw i32 %99, %21
  %101 = add nsw i32 %20, %100
  %102 = load i32, i32* %6, align 4
  %103 = xor i32 %101, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %14
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @x.1, align 4
  %112 = load i32, i32* @y.2, align 4
  %113 = load i32, i32* @x.9, align 4
  %114 = load i32, i32* @y.10, align 4
  %115 = load i32, i32* @x.33, align 4
  %116 = load i32, i32* @y.34, align 4
  %117 = shl i32 %115, 5
  %118 = lshr i32 %116, 3
  %119 = or i32 %117, %118
  %120 = xor i32 %119, 831446
  %121 = shl i32 %113, %120
  %122 = load i32, i32* @x.35, align 4
  %123 = load i32, i32* @y.36, align 4
  %124 = shl i32 %122, 5
  %125 = lshr i32 %123, 3
  %126 = or i32 %124, %125
  %127 = xor i32 %126, 312650
  %128 = lshr i32 %114, %127
  %129 = or i32 %121, %128
  %130 = load i32, i32* @x.37, align 4
  %131 = load i32, i32* @y.38, align 4
  %132 = shl i32 %130, 5
  %133 = lshr i32 %131, 3
  %134 = or i32 %132, %133
  %135 = xor i32 %134, 535728
  %136 = xor i32 %129, %135
  %137 = mul i32 %136, %111
  %138 = load i32, i32* @x.11, align 4
  %139 = load i32, i32* @y.12, align 4
  %140 = load i32, i32* @x.39, align 4
  %141 = load i32, i32* @y.40, align 4
  %142 = mul i32 13455, %140
  %143 = mul i32 20623, %141
  %144 = add i32 %142, %143
  %145 = add i32 %144, -995461977
  %146 = shl i32 %138, %145
  %147 = load i32, i32* @x.41, align 4
  %148 = load i32, i32* @y.42, align 4
  %149 = shl i32 %147, 5
  %150 = lshr i32 %148, 3
  %151 = or i32 %149, %150
  %152 = xor i32 %151, 399203
  %153 = lshr i32 %139, %152
  %154 = or i32 %146, %153
  %155 = load i32, i32* @x.43, align 4
  %156 = load i32, i32* @y.44, align 4
  %157 = shl i32 %155, 5
  %158 = lshr i32 %156, 3
  %159 = or i32 %157, %158
  %160 = xor i32 %159, 479500
  %161 = xor i32 %154, %160
  %162 = mul i32 %161, %112
  %163 = add i32 %137, %162
  %164 = load i32, i32* @x.13, align 4
  %165 = load i32, i32* @y.14, align 4
  %166 = load i32, i32* @x.45, align 4
  %167 = load i32, i32* @y.46, align 4
  %168 = mul i32 7112, %166
  %169 = mul i32 27415, %167
  %170 = add i32 %168, %169
  %171 = add i32 %170, -239857340
  %172 = shl i32 %164, %171
  %173 = load i32, i32* @x.47, align 4
  %174 = load i32, i32* @y.48, align 4
  %175 = shl i32 %173, 5
  %176 = lshr i32 %174, 3
  %177 = or i32 %175, %176
  %178 = xor i32 %177, 610227
  %179 = lshr i32 %165, %178
  %180 = or i32 %172, %179
  %181 = load i32, i32* @x.49, align 4
  %182 = load i32, i32* @y.50, align 4
  %183 = shl i32 %181, 5
  %184 = lshr i32 %182, 3
  %185 = or i32 %183, %184
  %186 = xor i32 %185, -77267386
  %187 = xor i32 %180, %186
  %188 = add i32 %163, %187
  %189 = add nsw i32 %110, %188
  store i32 %189, i32* %6, align 4
  br label %10, !llvm.loop !2

190:                                              ; preds = %10
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline norecurse optnone uwtable mustprogress
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %7, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %8 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #5
  %9 = icmp eq i64 %8, 22
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %12 = call i32 @memcmp(i8* %11, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %0
  %16 = phi i1 [ false, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* %3, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %24

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @__isoc99_scanf(i8*, ...) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}

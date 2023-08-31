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

10:                                               ; preds = %118, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %131

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = sub i32 32, 445422676
  %23 = sub i32 %22, 714689870
  %24 = add i32 %23, 445422676
  %25 = sub i32 32, 714689870
  %26 = add i32 %24, 930611943
  %27 = sub i32 %26, %21
  %28 = sub i32 %27, 930611943
  %29 = sub i32 %24, %21
  %30 = add i32 %28, 889316895
  %31 = add i32 %30, 714689870
  %32 = sub i32 %31, 889316895
  %33 = add i32 %28, 714689870
  %34 = sub i32 32, 428064614
  %35 = sub i32 %34, %21
  %36 = add i32 %35, 428064614
  %37 = sub nsw i32 32, %21
  %38 = add i32 %20, 1821241875
  %39 = sub i32 %38, 1849205514
  %40 = sub i32 %39, 1821241875
  %41 = sub i32 %20, 1849205514
  %42 = sub i32 0, %40
  %43 = sub i32 0, %32
  %44 = add i32 %42, %43
  %45 = sub i32 0, %44
  %46 = add i32 %40, %32
  %47 = sub i32 0, %45
  %48 = sub i32 0, 1849205514
  %49 = add i32 %47, %48
  %50 = sub i32 0, %49
  %51 = add i32 %45, 1849205514
  %52 = add i32 %20, 948451917
  %53 = add i32 %52, %32
  %54 = sub i32 %53, 948451917
  %55 = add nsw i32 %20, %32
  %56 = load i32, i32* %6, align 4
  %57 = xor i32 %50, -1
  %58 = and i32 836938209, %57
  %59 = xor i32 836938209, -1
  %60 = and i32 %59, %50
  %61 = or i32 %60, %58
  %62 = xor i32 -1, -1
  %63 = and i32 836938209, %62
  %64 = xor i32 836938209, -1
  %65 = and i32 %64, -1
  %66 = or i32 %63, %65
  %67 = xor i32 %66, %61
  %68 = xor i32 %50, -1
  %69 = xor i32 %67, -1
  %70 = xor i32 %56, -1
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = xor i32 2038090089, -1
  %74 = or i32 2038090089, %73
  %75 = and i32 %74, %72
  %76 = and i32 %56, %67
  %77 = xor i32 %56, %67
  %78 = or i32 %76, %77
  %79 = and i32 %56, %67
  %80 = xor i32 %56, -1
  %81 = and i32 -1, %80
  %82 = xor i32 -1, -1
  %83 = and i32 %56, %82
  %84 = or i32 %83, %81
  %85 = xor i32 %56, -1
  %86 = xor i32 %84, -1
  %87 = xor i32 %50, %86
  %88 = and i32 %50, %87
  %89 = xor i32 %84, -1
  %90 = xor i32 %50, -1
  %91 = and i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = xor i32 223712519, -1
  %94 = or i32 223712519, %93
  %95 = and i32 %94, %92
  %96 = and i32 %50, %84
  %97 = and i32 %88, %75
  %98 = xor i32 %88, %75
  %99 = or i32 %97, %98
  %100 = or i32 %88, %75
  %101 = xor i32 %50, -1
  %102 = and i32 1898434705, %101
  %103 = xor i32 1898434705, -1
  %104 = and i32 %103, %50
  %105 = or i32 %104, %102
  %106 = xor i32 %56, -1
  %107 = and i32 1898434705, %106
  %108 = xor i32 1898434705, -1
  %109 = and i32 %108, %56
  %110 = or i32 %107, %109
  %111 = xor i32 %110, %105
  %112 = xor i32 %50, %56
  %113 = trunc i32 %99 to i8
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  br label %118

118:                                              ; preds = %14
  %119 = load i32, i32* %6, align 4
  %120 = sub i32 0, 1
  %121 = add i32 0, %120
  %122 = sub i32 0, 1
  %123 = sub i32 %119, 1600156572
  %124 = sub i32 %123, %121
  %125 = add i32 %124, 1600156572
  %126 = sub i32 %119, %121
  %127 = sub i32 %119, 1278258852
  %128 = add i32 %127, 1
  %129 = add i32 %128, 1278258852
  %130 = add nsw i32 %119, 1
  store i32 %125, i32* %6, align 4
  br label %10, !llvm.loop !2

131:                                              ; preds = %10
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
  br i1 %9, label %10, label %72

10:                                               ; preds = %0
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %12 = call i32 @memcmp(i8* %11, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = and i1 true, %14
  %16 = xor i1 true, true
  %17 = and i1 %16, %13
  %18 = or i1 %17, %15
  %19 = xor i1 true, true
  %20 = and i1 true, %19
  %21 = xor i1 true, true
  %22 = and i1 %21, true
  %23 = or i1 %20, %22
  %24 = xor i1 %23, %18
  %25 = xor i1 %13, true
  %26 = xor i1 %24, true
  %27 = xor i1 true, true
  %28 = or i1 %26, %27
  %29 = xor i1 %28, true
  %30 = xor i1 true, true
  %31 = or i1 true, %30
  %32 = and i1 %31, %29
  %33 = and i1 true, %24
  %34 = xor i1 true, %24
  %35 = or i1 %33, %34
  %36 = and i1 true, %24
  %37 = xor i1 true, true
  %38 = and i1 true, %37
  %39 = xor i1 true, true
  %40 = and i1 true, %39
  %41 = or i1 %40, %38
  %42 = xor i1 true, true
  %43 = xor i1 %41, true
  %44 = xor i1 %13, true
  %45 = or i1 %43, %44
  %46 = xor i1 %45, true
  %47 = xor i1 false, true
  %48 = or i1 false, %47
  %49 = and i1 %48, %46
  %50 = xor i1 %41, true
  %51 = xor i1 %13, true
  %52 = and i1 %50, %51
  %53 = xor i1 %52, true
  %54 = xor i1 false, true
  %55 = or i1 false, %54
  %56 = and i1 %55, %53
  %57 = and i1 %13, %41
  %58 = xor i1 %32, true
  %59 = xor i1 %49, true
  %60 = and i1 %58, %59
  %61 = xor i1 %60, true
  %62 = xor i1 true, true
  %63 = or i1 true, %62
  %64 = and i1 %63, %61
  %65 = or i1 %49, %32
  %66 = xor i1 %13, true
  %67 = and i1 true, %66
  %68 = xor i1 true, true
  %69 = and i1 %13, %68
  %70 = or i1 %69, %67
  %71 = xor i1 %13, true
  br label %72

72:                                               ; preds = %10, %0
  %73 = phi i1 [ false, %0 ], [ %64, %10 ]
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %3, align 1
  %75 = load i8, i8* %3, align 1
  %76 = trunc i8 %75 to i1
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %81

79:                                               ; preds = %72
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i32, i32* %1, align 4
  ret i32 %82
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

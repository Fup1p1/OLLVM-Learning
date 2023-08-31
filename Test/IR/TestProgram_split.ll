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
  br label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #5
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %37, %7
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  br label %14

14:                                               ; preds = %11
  %15 = icmp slt i32 %12, %13
  br i1 %15, label %16, label %38

16:                                               ; preds = %14
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 32, %23
  %25 = add nsw i32 %22, %24
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = xor i32 %25, %27
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  br label %37

37:                                               ; preds = %34
  store i32 %36, i32* %6, align 4
  br label %11, !llvm.loop !2

38:                                               ; preds = %14
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
  br label %7

7:                                                ; preds = %0
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %9 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #5
  %10 = icmp eq i64 %9, 22
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %13 = call i32 @memcmp(i8* %12, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11
  %16 = xor i1 %14, true
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i1 [ false, %7 ], [ %16, %15 ]
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = load i8, i8* %3, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22
  br label %28

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %1, align 4
  br label %30

30:                                               ; preds = %28
  ret i32 %29
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

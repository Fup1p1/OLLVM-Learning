; ModuleID = 'IR/TestProgram_lowerswitch.ll'
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
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %swVar.ptr = alloca i32, align 4
  store i32 565852437, i32* %swVar.ptr, align 4
  br label %dispatchBB

dispatchBB:                                       ; preds = %retBB, %2
  %swVAR = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVAR, label %defaultBB [
    i32 565852437, label %7
    i32 1521484516, label %11
    i32 104092788, label %14
    i32 592928146, label %17
    i32 2059851067, label %27
    i32 2083045039, label %35
    i32 745780594, label %38
    i32 2006386747, label %39
  ]

defaultBB:                                        ; preds = %dispatchBB
  br label %retBB

7:                                                ; preds = %dispatchBB
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #5
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1521484516, i32* %swVar.ptr, align 4
  br label %retBB

11:                                               ; preds = %dispatchBB
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %.reg2mem, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %.reg2mem1, align 4
  store i32 104092788, i32* %swVar.ptr, align 4
  br label %retBB

14:                                               ; preds = %dispatchBB
  %.reload = load volatile i32, i32* %.reg2mem, align 4
  %.reload2 = load volatile i32, i32* %.reg2mem1, align 4
  %15 = icmp slt i32 %.reload, %.reload2
  %16 = select i1 %15, i32 592928146, i32 2006386747
  store i32 %16, i32* %swVar.ptr, align 4
  br label %retBB

17:                                               ; preds = %dispatchBB
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 32, %24
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %.reg2mem3, align 4
  store i32 2059851067, i32* %swVar.ptr, align 4
  br label %retBB

27:                                               ; preds = %dispatchBB
  %28 = load i32, i32* %6, align 4
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  %29 = xor i32 %.reload4, %28
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  store i32 2083045039, i32* %swVar.ptr, align 4
  br label %retBB

35:                                               ; preds = %dispatchBB
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %.reg2mem5, align 4
  store i32 745780594, i32* %swVar.ptr, align 4
  br label %retBB

38:                                               ; preds = %dispatchBB
  %.reload6 = load volatile i32, i32* %.reg2mem5, align 4
  store i32 %.reload6, i32* %6, align 4
  store i32 1521484516, i32* %swVar.ptr, align 4
  br label %retBB

39:                                               ; preds = %dispatchBB
  ret void

retBB:                                            ; preds = %38, %35, %27, %17, %14, %11, %7, %defaultBB
  br label %dispatchBB
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline norecurse optnone uwtable mustprogress
define dso_local i32 @main() #2 {
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i1, align 1
  %.reg2mem1 = alloca i8*, align 8
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %6 = bitcast [100 x i8]* %2 to i8*
  store i8* %6, i8** %.reg2mem1, align 8
  %swVar.ptr = alloca i32, align 4
  store i32 623268290, i32* %swVar.ptr, align 4
  %.reg2mem = alloca i1, align 1
  br label %dispatchBB

dispatchBB:                                       ; preds = %retBB, %0
  %swVAR = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVAR, label %defaultBB [
    i32 623268290, label %7
    i32 920789608, label %12
    i32 1890403116, label %16
    i32 768558568, label %18
    i32 945734827, label %23
    i32 1483929464, label %25
    i32 1113468320, label %26
    i32 392653579, label %28
    i32 1598300586, label %29
    i32 1499800158, label %31
  ]

defaultBB:                                        ; preds = %dispatchBB
  br label %retBB

7:                                                ; preds = %dispatchBB
  %.reload2 = load volatile i8*, i8** %.reg2mem1, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 %.reload2, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %9 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #5
  %10 = icmp eq i64 %9, 22
  %11 = select i1 %10, i32 920789608, i32 768558568
  store i32 %11, i32* %swVar.ptr, align 4
  store i1 false, i1* %.reg2mem, align 1
  br label %retBB

12:                                               ; preds = %dispatchBB
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %14 = call i32 @memcmp(i8* %13, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %15 = icmp ne i32 %14, 0
  store i1 %15, i1* %.reg2mem3, align 1
  store i32 1890403116, i32* %swVar.ptr, align 4
  br label %retBB

16:                                               ; preds = %dispatchBB
  %.reload4 = load volatile i1, i1* %.reg2mem3, align 1
  %17 = xor i1 %.reload4, true
  store i32 768558568, i32* %swVar.ptr, align 4
  store i1 %17, i1* %.reg2mem, align 1
  br label %retBB

18:                                               ; preds = %dispatchBB
  %.reload = load i1, i1* %.reg2mem, align 1
  %19 = zext i1 %.reload to i8
  store i8 %19, i8* %3, align 1
  %20 = load i8, i8* %3, align 1
  %21 = trunc i8 %20 to i1
  %22 = select i1 %21, i32 945734827, i32 1113468320
  store i32 %22, i32* %swVar.ptr, align 4
  br label %retBB

23:                                               ; preds = %dispatchBB
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 1483929464, i32* %swVar.ptr, align 4
  br label %retBB

25:                                               ; preds = %dispatchBB
  store i32 1598300586, i32* %swVar.ptr, align 4
  br label %retBB

26:                                               ; preds = %dispatchBB
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 392653579, i32* %swVar.ptr, align 4
  br label %retBB

28:                                               ; preds = %dispatchBB
  store i32 1598300586, i32* %swVar.ptr, align 4
  br label %retBB

29:                                               ; preds = %dispatchBB
  %30 = load i32, i32* %1, align 4
  store i32 %30, i32* %.reg2mem5, align 4
  store i32 1499800158, i32* %swVar.ptr, align 4
  br label %retBB

31:                                               ; preds = %dispatchBB
  %.reload6 = load volatile i32, i32* %.reg2mem5, align 4
  ret i32 %.reload6

retBB:                                            ; preds = %29, %28, %26, %25, %23, %18, %16, %12, %7, %defaultBB
  br label %dispatchBB
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

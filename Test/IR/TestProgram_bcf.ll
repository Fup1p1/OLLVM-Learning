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
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0
@x.7 = common global i32 0
@y.8 = common global i32 0
@x.9 = common global i32 0
@y.10 = common global i32 0
@x.11 = common global i32 0
@y.12 = common global i32 0
@x.13 = common global i32 0
@y.14 = common global i32 0
@x.15 = common global i32 0
@y.16 = common global i32 0
@x.17 = common global i32 0
@y.18 = common global i32 0
@x.19 = common global i32 0
@y.20 = common global i32 0
@x.21 = common global i32 0
@y.22 = common global i32 0
@x.23 = common global i32 0
@y.24 = common global i32 0
@x.25 = common global i32 0
@y.26 = common global i32 0
@x.27 = common global i32 0
@y.28 = common global i32 0
@x.29 = common global i32 0
@y.30 = common global i32 0
@x.31 = common global i32 0
@y.32 = common global i32 0
@x.33 = common global i32 0
@y.34 = common global i32 0
@x.35 = common global i32 0
@y.36 = common global i32 0
@x.37 = common global i32 0
@y.38 = common global i32 0
@x.39 = common global i32 0
@y.40 = common global i32 0
@x.41 = common global i32 0
@y.42 = common global i32 0
@x.43 = common global i32 0
@y.44 = common global i32 0
@x.45 = common global i32 0
@y.46 = common global i32 0
@x.47 = common global i32 0
@y.48 = common global i32 0
@x.49 = common global i32 0
@y.50 = common global i32 0
@x.51 = common global i32 0
@y.52 = common global i32 0
@x.53 = common global i32 0
@y.54 = common global i32 0
@x.55 = common global i32 0
@y.56 = common global i32 0
@x.57 = common global i32 0
@y.58 = common global i32 0
@x.59 = common global i32 0
@y.60 = common global i32 0
@x.61 = common global i32 0
@y.62 = common global i32 0
@x.63 = common global i32 0
@y.64 = common global i32 0
@x.65 = common global i32 0
@y.66 = common global i32 0
@x.67 = common global i32 0
@y.68 = common global i32 0
@x.69 = common global i32 0
@y.70 = common global i32 0
@x.71 = common global i32 0
@y.72 = common global i32 0
@x.73 = common global i32 0
@y.74 = common global i32 0
@x.75 = common global i32 0
@y.76 = common global i32 0
@x.77 = common global i32 0
@y.78 = common global i32 0

; Function Attrs: noinline nounwind optnone uwtable mustprogress
define dso_local void @_Z7encryptPhPc(i8* %0, i8* %1) #0 {
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem28 = alloca i1, align 1
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem9 = alloca i32*, align 8
  %.reg2mem6 = alloca i32*, align 8
  %.reg2mem2 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %3 = load i32, i32* @x, align 4
  %4 = load i32, i32* @y, align 4
  %5 = icmp slt i32 %4, 10
  %6 = add i32 %3, 1
  %7 = mul i32 %3, %6
  %8 = srem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %5, %9
  br i1 %10, label %BodyBB, label %BodyBBcloneBB

BodyBB:                                           ; preds = %BodyBBcloneBB, %2
  %11 = alloca i8*, align 8
  store i8** %11, i8*** %.reg2mem, align 8
  %12 = alloca i8*, align 8
  store i8** %12, i8*** %.reg2mem2, align 8
  %13 = alloca i32, align 4
  store i32* %13, i32** %.reg2mem6, align 8
  %14 = alloca i32, align 4
  store i32* %14, i32** %.reg2mem9, align 8
  %.reload1 = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1, align 8
  %.reload5 = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5, align 8
  %15 = load i32, i32* @x.1, align 4
  %16 = load i32, i32* @y.2, align 4
  %17 = icmp slt i32 %16, 10
  %18 = add i32 %15, 1
  %19 = mul i32 %15, %18
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %17, %21
  br i1 %22, label %endBB, label %BodyBBcloneBB

endBB:                                            ; preds = %BodyBB
  br label %23

23:                                               ; preds = %endBB
  %24 = load i32, i32* @x.3, align 4
  %25 = load i32, i32* @y.4, align 4
  %26 = icmp slt i32 %25, 10
  %27 = add i32 %24, 1
  %28 = mul i32 %24, %27
  %29 = srem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %26, %30
  br i1 %31, label %BodyBB18, label %BodyBB18cloneBB

BodyBB18:                                         ; preds = %BodyBB18cloneBB, %23
  %.reload4 = load volatile i8**, i8*** %.reg2mem2, align 8
  %32 = load i8*, i8** %.reload4, align 8
  %33 = call i64 @strlen(i8* %32) #5
  %34 = trunc i64 %33 to i32
  %.reload8 = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %34, i32* %.reload8, align 4
  %.reload17 = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17, align 4
  %35 = load i32, i32* @x.5, align 4
  %36 = load i32, i32* @y.6, align 4
  %37 = icmp slt i32 %36, 10
  %38 = add i32 %35, 1
  %39 = mul i32 %35, %38
  %40 = srem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %37, %41
  br i1 %42, label %endBB19, label %BodyBB18cloneBB

endBB19:                                          ; preds = %BodyBB18
  br label %43

43:                                               ; preds = %endBB41, %endBB19
  %44 = load i32, i32* @x.7, align 4
  %45 = load i32, i32* @y.8, align 4
  %46 = icmp slt i32 %45, 10
  %47 = add i32 %44, 1
  %48 = mul i32 %44, %47
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = or i1 %46, %50
  br i1 %51, label %BodyBB20, label %BodyBB20cloneBB

BodyBB20:                                         ; preds = %BodyBB20cloneBB, %43
  %.reload16 = load volatile i32*, i32** %.reg2mem9, align 8
  %52 = load i32, i32* %.reload16, align 4
  store i32 %52, i32* %.reg2mem22, align 4
  %.reload7 = load volatile i32*, i32** %.reg2mem6, align 8
  %53 = load i32, i32* %.reload7, align 4
  store i32 %53, i32* %.reg2mem24, align 4
  %54 = load i32, i32* @x.9, align 4
  %55 = load i32, i32* @y.10, align 4
  %56 = icmp slt i32 %55, 10
  %57 = add i32 %54, 1
  %58 = mul i32 %54, %57
  %59 = srem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %56, %60
  br i1 %61, label %endBB21, label %BodyBB20cloneBB

endBB21:                                          ; preds = %BodyBB20
  br label %62

62:                                               ; preds = %endBB21
  %63 = load i32, i32* @x.11, align 4
  %64 = load i32, i32* @y.12, align 4
  %65 = icmp slt i32 %64, 10
  %66 = add i32 %63, 1
  %67 = mul i32 %63, %66
  %68 = srem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %65, %69
  br i1 %70, label %BodyBB26, label %BodyBB26cloneBB

BodyBB26:                                         ; preds = %BodyBB26cloneBB, %62
  %.reload23 = load volatile i32, i32* %.reg2mem22, align 4
  %.reload25 = load volatile i32, i32* %.reg2mem24, align 4
  %71 = icmp slt i32 %.reload23, %.reload25
  store i1 %71, i1* %.reg2mem28, align 1
  %72 = load i32, i32* @x.13, align 4
  %73 = load i32, i32* @y.14, align 4
  %74 = icmp slt i32 %73, 10
  %75 = add i32 %72, 1
  %76 = mul i32 %72, %75
  %77 = srem i32 %76, 2
  %78 = icmp eq i32 %77, 0
  %79 = or i1 %74, %78
  br i1 %79, label %endBB27, label %BodyBB26cloneBB

endBB27:                                          ; preds = %BodyBB26
  %.reload29 = load volatile i1, i1* %.reg2mem28, align 1
  br i1 %.reload29, label %80, label %166

80:                                               ; preds = %endBB27
  %81 = load i32, i32* @x.15, align 4
  %82 = load i32, i32* @y.16, align 4
  %83 = icmp slt i32 %82, 10
  %84 = add i32 %81, 1
  %85 = mul i32 %81, %84
  %86 = srem i32 %85, 2
  %87 = icmp eq i32 %86, 0
  %88 = or i1 %83, %87
  br i1 %88, label %BodyBB30, label %BodyBB30cloneBB

BodyBB30:                                         ; preds = %BodyBB30cloneBB, %80
  %.reload3 = load volatile i8**, i8*** %.reg2mem2, align 8
  %89 = load i8*, i8** %.reload3, align 8
  %.reload15 = load volatile i32*, i32** %.reg2mem9, align 8
  %90 = load i32, i32* %.reload15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %.reload14 = load volatile i32*, i32** %.reg2mem9, align 8
  %95 = load i32, i32* %.reload14, align 4
  %96 = sub nsw i32 32, %95
  %97 = add nsw i32 %94, %96
  store i32 %97, i32* %.reg2mem32, align 4
  %98 = load i32, i32* @x.17, align 4
  %99 = load i32, i32* @y.18, align 4
  %100 = icmp slt i32 %99, 10
  %101 = add i32 %98, 1
  %102 = mul i32 %98, %101
  %103 = srem i32 %102, 2
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %100, %104
  br i1 %105, label %endBB31, label %BodyBB30cloneBB

endBB31:                                          ; preds = %BodyBB30
  br label %106

106:                                              ; preds = %endBB31
  %107 = load i32, i32* @x.19, align 4
  %108 = load i32, i32* @y.20, align 4
  %109 = icmp slt i32 %108, 10
  %110 = add i32 %107, 1
  %111 = mul i32 %107, %110
  %112 = srem i32 %111, 2
  %113 = icmp eq i32 %112, 0
  %114 = or i1 %109, %113
  br i1 %114, label %BodyBB34, label %BodyBB34cloneBB

BodyBB34:                                         ; preds = %BodyBB34cloneBB, %106
  %.reload13 = load volatile i32*, i32** %.reg2mem9, align 8
  %115 = load i32, i32* %.reload13, align 4
  %.reload33 = load volatile i32, i32* %.reg2mem32, align 4
  %116 = xor i32 %.reload33, %115
  %117 = trunc i32 %116 to i8
  %.reload = load volatile i8**, i8*** %.reg2mem, align 8
  %118 = load i8*, i8** %.reload, align 8
  %.reload12 = load volatile i32*, i32** %.reg2mem9, align 8
  %119 = load i32, i32* %.reload12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 %117, i8* %121, align 1
  %122 = load i32, i32* @x.21, align 4
  %123 = load i32, i32* @y.22, align 4
  %124 = icmp slt i32 %123, 10
  %125 = add i32 %122, 1
  %126 = mul i32 %122, %125
  %127 = srem i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = or i1 %124, %128
  br i1 %129, label %endBB35, label %BodyBB34cloneBB

endBB35:                                          ; preds = %BodyBB34
  br label %130

130:                                              ; preds = %endBB35
  %131 = load i32, i32* @x.23, align 4
  %132 = load i32, i32* @y.24, align 4
  %133 = icmp slt i32 %132, 10
  %134 = add i32 %131, 1
  %135 = mul i32 %131, %134
  %136 = srem i32 %135, 2
  %137 = icmp eq i32 %136, 0
  %138 = or i1 %133, %137
  br i1 %138, label %BodyBB36, label %BodyBB36cloneBB

BodyBB36:                                         ; preds = %BodyBB36cloneBB, %130
  %.reload11 = load volatile i32*, i32** %.reg2mem9, align 8
  %139 = load i32, i32* %.reload11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %.reg2mem38, align 4
  %141 = load i32, i32* @x.25, align 4
  %142 = load i32, i32* @y.26, align 4
  %143 = icmp slt i32 %142, 10
  %144 = add i32 %141, 1
  %145 = mul i32 %141, %144
  %146 = srem i32 %145, 2
  %147 = icmp eq i32 %146, 0
  %148 = or i1 %143, %147
  br i1 %148, label %endBB37, label %BodyBB36cloneBB

endBB37:                                          ; preds = %BodyBB36
  br label %149

149:                                              ; preds = %endBB37
  %150 = load i32, i32* @x.27, align 4
  %151 = load i32, i32* @y.28, align 4
  %152 = icmp slt i32 %151, 10
  %153 = add i32 %150, 1
  %154 = mul i32 %150, %153
  %155 = srem i32 %154, 2
  %156 = icmp eq i32 %155, 0
  %157 = or i1 %152, %156
  br i1 %157, label %BodyBB40, label %BodyBB40cloneBB

BodyBB40:                                         ; preds = %BodyBB40cloneBB, %149
  %.reload10 = load volatile i32*, i32** %.reg2mem9, align 8
  %.reload39 = load volatile i32, i32* %.reg2mem38, align 4
  store i32 %.reload39, i32* %.reload10, align 4
  %158 = load i32, i32* @x.29, align 4
  %159 = load i32, i32* @y.30, align 4
  %160 = icmp slt i32 %159, 10
  %161 = add i32 %158, 1
  %162 = mul i32 %158, %161
  %163 = srem i32 %162, 2
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %160, %164
  br i1 %165, label %endBB41, label %BodyBB40cloneBB

endBB41:                                          ; preds = %BodyBB40
  br label %43, !llvm.loop !2

166:                                              ; preds = %endBB27
  %167 = load i32, i32* @x.31, align 4
  %168 = load i32, i32* @y.32, align 4
  %169 = icmp slt i32 %168, 10
  %170 = add i32 %167, 1
  %171 = mul i32 %167, %170
  %172 = srem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = or i1 %169, %173
  br i1 %174, label %BodyBB42, label %BodyBB42cloneBB

BodyBB42:                                         ; preds = %BodyBB42cloneBB, %166
  %175 = load i32, i32* @x.33, align 4
  %176 = load i32, i32* @y.34, align 4
  %177 = icmp slt i32 %176, 10
  %178 = add i32 %175, 1
  %179 = mul i32 %175, %178
  %180 = srem i32 %179, 2
  %181 = icmp eq i32 %180, 0
  %182 = or i1 %177, %181
  br i1 %182, label %endBB43, label %BodyBB42cloneBB

endBB43:                                          ; preds = %BodyBB42
  ret void

BodyBBcloneBB:                                    ; preds = %BodyBB, %2
  %183 = alloca i8*, align 8
  store i8** %183, i8*** %.reg2mem, align 8
  %184 = alloca i8*, align 8
  store i8** %184, i8*** %.reg2mem2, align 8
  %185 = alloca i32, align 4
  store i32* %185, i32** %.reg2mem6, align 8
  %186 = alloca i32, align 4
  store i32* %186, i32** %.reg2mem9, align 8
  %.reload1cloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1cloneBB, align 8
  %.reload5cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5cloneBB, align 8
  br label %BodyBB

BodyBB18cloneBB:                                  ; preds = %BodyBB18, %23
  %.reload4cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %187 = load i8*, i8** %.reload4cloneBB, align 8
  %188 = call i64 @strlen(i8* %187) #5
  %189 = trunc i64 %188 to i32
  %.reload8cloneBB = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %189, i32* %.reload8cloneBB, align 4
  %.reload17cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17cloneBB, align 4
  br label %BodyBB18

BodyBB20cloneBB:                                  ; preds = %BodyBB20, %43
  %.reload16cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %190 = load i32, i32* %.reload16cloneBB, align 4
  store i32 %190, i32* %.reg2mem22, align 4
  %.reload7cloneBB = load volatile i32*, i32** %.reg2mem6, align 8
  %191 = load i32, i32* %.reload7cloneBB, align 4
  store i32 %191, i32* %.reg2mem24, align 4
  br label %BodyBB20

BodyBB26cloneBB:                                  ; preds = %BodyBB26, %62
  %.reload23cloneBB = load volatile i32, i32* %.reg2mem22, align 4
  %.reload25cloneBB = load volatile i32, i32* %.reg2mem24, align 4
  %192 = icmp slt i32 %.reload23cloneBB, %.reload25cloneBB
  store i1 %192, i1* %.reg2mem28, align 1
  br label %BodyBB26

BodyBB30cloneBB:                                  ; preds = %BodyBB30, %80
  %.reload3cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %193 = load i8*, i8** %.reload3cloneBB, align 8
  %.reload15cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %194 = load i32, i32* %.reload15cloneBB, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %.reload14cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %199 = load i32, i32* %.reload14cloneBB, align 4
  %200 = sub nsw i32 32, %199
  %201 = add nsw i32 %198, %200
  store i32 %201, i32* %.reg2mem32, align 4
  br label %BodyBB30

BodyBB34cloneBB:                                  ; preds = %BodyBB34, %106
  %.reload13cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %202 = load i32, i32* %.reload13cloneBB, align 4
  %.reload33cloneBB = load volatile i32, i32* %.reg2mem32, align 4
  %203 = xor i32 %.reload33cloneBB, %202
  %204 = trunc i32 %203 to i8
  %.reloadcloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  %205 = load i8*, i8** %.reloadcloneBB, align 8
  %.reload12cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %206 = load i32, i32* %.reload12cloneBB, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %204, i8* %208, align 1
  br label %BodyBB34

BodyBB36cloneBB:                                  ; preds = %BodyBB36, %130
  %.reload11cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %209 = load i32, i32* %.reload11cloneBB, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %.reg2mem38, align 4
  br label %BodyBB36

BodyBB40cloneBB:                                  ; preds = %BodyBB40, %149
  %.reload10cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %.reload39cloneBB = load volatile i32, i32* %.reg2mem38, align 4
  store i32 %.reload39cloneBB, i32* %.reload10cloneBB, align 4
  br label %BodyBB40

BodyBB42cloneBB:                                  ; preds = %BodyBB42, %166
  br label %BodyBB42
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline norecurse optnone uwtable mustprogress
define dso_local i32 @main() #2 {
  %.reload38.reg2mem = alloca i32, align 4
  %.reg2mem37 = alloca i32, align 4
  %.reg2mem25 = alloca i1, align 1
  %.reg2mem21 = alloca i1, align 1
  %.reg2mem17 = alloca i1, align 1
  %.reg2mem13 = alloca i1, align 1
  %.reg2mem9 = alloca i8*, align 8
  %.reg2mem6 = alloca i8*, align 8
  %.reg2mem2 = alloca [100 x i8]*, align 8
  %.reg2mem = alloca i32*, align 8
  %1 = load i32, i32* @x.35, align 4
  %2 = load i32, i32* @y.36, align 4
  %3 = icmp slt i32 %2, 10
  %4 = add i32 %1, 1
  %5 = mul i32 %1, %4
  %6 = srem i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %3, %7
  br i1 %8, label %BodyBB, label %BodyBBcloneBB

BodyBB:                                           ; preds = %BodyBBcloneBB, %0
  %9 = alloca i32, align 4
  store i32* %9, i32** %.reg2mem, align 8
  %10 = alloca [100 x i8], align 16
  store [100 x i8]* %10, [100 x i8]** %.reg2mem2, align 8
  %11 = alloca i8, align 1
  store i8* %11, i8** %.reg2mem6, align 8
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %.reload5 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %14 = bitcast [100 x i8]* %.reload5 to i8*
  store i8* %14, i8** %.reg2mem9, align 8
  %15 = load i32, i32* @x.37, align 4
  %16 = load i32, i32* @y.38, align 4
  %17 = icmp slt i32 %16, 10
  %18 = add i32 %15, 1
  %19 = mul i32 %15, %18
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %17, %21
  br i1 %22, label %endBB, label %BodyBBcloneBB

endBB:                                            ; preds = %BodyBB
  br label %23

23:                                               ; preds = %endBB
  %24 = load i32, i32* @x.39, align 4
  %25 = load i32, i32* @y.40, align 4
  %26 = icmp slt i32 %25, 10
  %27 = add i32 %24, 1
  %28 = mul i32 %24, %27
  %29 = srem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %26, %30
  br i1 %31, label %BodyBB11, label %BodyBB11cloneBB

BodyBB11:                                         ; preds = %BodyBB11cloneBB, %23
  %.reload10 = load volatile i8*, i8** %.reg2mem9, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 %.reload10, i8 0, i64 100, i1 false)
  %.reload4 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload4, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %32, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %33 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #5
  %34 = icmp eq i64 %33, 22
  store i1 %34, i1* %.reg2mem13, align 1
  %35 = load i32, i32* @x.41, align 4
  %36 = load i32, i32* @y.42, align 4
  %37 = icmp slt i32 %36, 10
  %38 = add i32 %35, 1
  %39 = mul i32 %35, %38
  %40 = srem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %37, %41
  br i1 %42, label %endBB12, label %BodyBB11cloneBB

endBB12:                                          ; preds = %BodyBB11
  %.reload14 = load volatile i1, i1* %.reg2mem13, align 1
  br i1 %.reload14, label %43, label %81

43:                                               ; preds = %endBB12
  %44 = load i32, i32* @x.43, align 4
  %45 = load i32, i32* @y.44, align 4
  %46 = icmp slt i32 %45, 10
  %47 = add i32 %44, 1
  %48 = mul i32 %44, %47
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = or i1 %46, %50
  br i1 %51, label %BodyBB15, label %BodyBB15cloneBB

BodyBB15:                                         ; preds = %BodyBB15cloneBB, %43
  %.reload3 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload3, i64 0, i64 0
  %53 = call i32 @memcmp(i8* %52, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %54 = icmp ne i32 %53, 0
  store i1 %54, i1* %.reg2mem17, align 1
  %55 = load i32, i32* @x.45, align 4
  %56 = load i32, i32* @y.46, align 4
  %57 = icmp slt i32 %56, 10
  %58 = add i32 %55, 1
  %59 = mul i32 %55, %58
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %57, %61
  br i1 %62, label %endBB16, label %BodyBB15cloneBB

endBB16:                                          ; preds = %BodyBB15
  br label %63

63:                                               ; preds = %endBB16
  %64 = load i32, i32* @x.47, align 4
  %65 = load i32, i32* @y.48, align 4
  %66 = icmp slt i32 %65, 10
  %67 = add i32 %64, 1
  %68 = mul i32 %64, %67
  %69 = srem i32 %68, 2
  %70 = icmp eq i32 %69, 0
  %71 = or i1 %66, %70
  br i1 %71, label %BodyBB19, label %BodyBB19cloneBB

BodyBB19:                                         ; preds = %BodyBB19cloneBB, %63
  %.reload18 = load volatile i1, i1* %.reg2mem17, align 1
  %72 = xor i1 %.reload18, true
  store i1 %72, i1* %.reg2mem21, align 1
  %73 = load i32, i32* @x.49, align 4
  %74 = load i32, i32* @y.50, align 4
  %75 = icmp slt i32 %74, 10
  %76 = add i32 %73, 1
  %77 = mul i32 %73, %76
  %78 = srem i32 %77, 2
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %75, %79
  br i1 %80, label %endBB20, label %BodyBB19cloneBB

endBB20:                                          ; preds = %BodyBB19
  %.reload22 = load volatile i1, i1* %.reg2mem21, align 1
  br label %81

81:                                               ; preds = %endBB20, %endBB12
  %82 = phi i1 [ false, %endBB12 ], [ %.reload22, %endBB20 ]
  %83 = load i32, i32* @x.51, align 4
  %84 = load i32, i32* @y.52, align 4
  %85 = icmp slt i32 %84, 10
  %86 = add i32 %83, 1
  %87 = mul i32 %83, %86
  %88 = srem i32 %87, 2
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %85, %89
  br i1 %90, label %BodyBB23, label %BodyBB23cloneBB

BodyBB23:                                         ; preds = %BodyBB23cloneBB, %81
  %91 = zext i1 %82 to i8
  %.reload8 = load volatile i8*, i8** %.reg2mem6, align 8
  store i8 %91, i8* %.reload8, align 1
  %.reload7 = load volatile i8*, i8** %.reg2mem6, align 8
  %92 = load i8, i8* %.reload7, align 1
  %93 = trunc i8 %92 to i1
  store i1 %93, i1* %.reg2mem25, align 1
  %94 = load i32, i32* @x.53, align 4
  %95 = load i32, i32* @y.54, align 4
  %96 = icmp slt i32 %95, 10
  %97 = add i32 %94, 1
  %98 = mul i32 %94, %97
  %99 = srem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %96, %100
  br i1 %101, label %endBB24, label %BodyBB23cloneBB

endBB24:                                          ; preds = %BodyBB23
  %.reload26 = load volatile i1, i1* %.reg2mem25, align 1
  br i1 %.reload26, label %102, label %137

102:                                              ; preds = %endBB24
  %103 = load i32, i32* @x.55, align 4
  %104 = load i32, i32* @y.56, align 4
  %105 = icmp slt i32 %104, 10
  %106 = add i32 %103, 1
  %107 = mul i32 %103, %106
  %108 = srem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = or i1 %105, %109
  br i1 %110, label %BodyBB27, label %BodyBB27cloneBB

BodyBB27:                                         ; preds = %BodyBB27cloneBB, %102
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @x.57, align 4
  %113 = load i32, i32* @y.58, align 4
  %114 = icmp slt i32 %113, 10
  %115 = add i32 %112, 1
  %116 = mul i32 %112, %115
  %117 = srem i32 %116, 2
  %118 = icmp eq i32 %117, 0
  %119 = or i1 %114, %118
  br i1 %119, label %endBB28, label %BodyBB27cloneBB

endBB28:                                          ; preds = %BodyBB27
  br label %120

120:                                              ; preds = %endBB28
  %121 = load i32, i32* @x.59, align 4
  %122 = load i32, i32* @y.60, align 4
  %123 = icmp slt i32 %122, 10
  %124 = add i32 %121, 1
  %125 = mul i32 %121, %124
  %126 = srem i32 %125, 2
  %127 = icmp eq i32 %126, 0
  %128 = or i1 %123, %127
  br i1 %128, label %BodyBB29, label %BodyBB29cloneBB

BodyBB29:                                         ; preds = %BodyBB29cloneBB, %120
  %129 = load i32, i32* @x.61, align 4
  %130 = load i32, i32* @y.62, align 4
  %131 = icmp slt i32 %130, 10
  %132 = add i32 %129, 1
  %133 = mul i32 %129, %132
  %134 = srem i32 %133, 2
  %135 = icmp eq i32 %134, 0
  %136 = or i1 %131, %135
  br i1 %136, label %endBB30, label %BodyBB29cloneBB

endBB30:                                          ; preds = %BodyBB29
  br label %172

137:                                              ; preds = %endBB24
  %138 = load i32, i32* @x.63, align 4
  %139 = load i32, i32* @y.64, align 4
  %140 = icmp slt i32 %139, 10
  %141 = add i32 %138, 1
  %142 = mul i32 %138, %141
  %143 = srem i32 %142, 2
  %144 = icmp eq i32 %143, 0
  %145 = or i1 %140, %144
  br i1 %145, label %BodyBB31, label %BodyBB31cloneBB

BodyBB31:                                         ; preds = %BodyBB31cloneBB, %137
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @x.65, align 4
  %148 = load i32, i32* @y.66, align 4
  %149 = icmp slt i32 %148, 10
  %150 = add i32 %147, 1
  %151 = mul i32 %147, %150
  %152 = srem i32 %151, 2
  %153 = icmp eq i32 %152, 0
  %154 = or i1 %149, %153
  br i1 %154, label %endBB32, label %BodyBB31cloneBB

endBB32:                                          ; preds = %BodyBB31
  br label %155

155:                                              ; preds = %endBB32
  %156 = load i32, i32* @x.67, align 4
  %157 = load i32, i32* @y.68, align 4
  %158 = icmp slt i32 %157, 10
  %159 = add i32 %156, 1
  %160 = mul i32 %156, %159
  %161 = srem i32 %160, 2
  %162 = icmp eq i32 %161, 0
  %163 = or i1 %158, %162
  br i1 %163, label %BodyBB33, label %BodyBB33cloneBB

BodyBB33:                                         ; preds = %BodyBB33cloneBB, %155
  %164 = load i32, i32* @x.69, align 4
  %165 = load i32, i32* @y.70, align 4
  %166 = icmp slt i32 %165, 10
  %167 = add i32 %164, 1
  %168 = mul i32 %164, %167
  %169 = srem i32 %168, 2
  %170 = icmp eq i32 %169, 0
  %171 = or i1 %166, %170
  br i1 %171, label %endBB34, label %BodyBB33cloneBB

endBB34:                                          ; preds = %BodyBB33
  br label %172

172:                                              ; preds = %endBB34, %endBB30
  %173 = load i32, i32* @x.71, align 4
  %174 = load i32, i32* @y.72, align 4
  %175 = icmp slt i32 %174, 10
  %176 = add i32 %173, 1
  %177 = mul i32 %173, %176
  %178 = srem i32 %177, 2
  %179 = icmp eq i32 %178, 0
  %180 = or i1 %175, %179
  br i1 %180, label %BodyBB35, label %BodyBB35cloneBB

BodyBB35:                                         ; preds = %BodyBB35cloneBB, %172
  %.reload = load volatile i32*, i32** %.reg2mem, align 8
  %181 = load i32, i32* %.reload, align 4
  store i32 %181, i32* %.reg2mem37, align 4
  %182 = load i32, i32* @x.73, align 4
  %183 = load i32, i32* @y.74, align 4
  %184 = icmp slt i32 %183, 10
  %185 = add i32 %182, 1
  %186 = mul i32 %182, %185
  %187 = srem i32 %186, 2
  %188 = icmp eq i32 %187, 0
  %189 = or i1 %184, %188
  br i1 %189, label %endBB36, label %BodyBB35cloneBB

endBB36:                                          ; preds = %BodyBB35
  br label %190

190:                                              ; preds = %endBB36
  %191 = load i32, i32* @x.75, align 4
  %192 = load i32, i32* @y.76, align 4
  %193 = icmp slt i32 %192, 10
  %194 = add i32 %191, 1
  %195 = mul i32 %191, %194
  %196 = srem i32 %195, 2
  %197 = icmp eq i32 %196, 0
  %198 = or i1 %193, %197
  br i1 %198, label %BodyBB39, label %BodyBB39cloneBB

BodyBB39:                                         ; preds = %BodyBB39cloneBB, %190
  %.reload38 = load volatile i32, i32* %.reg2mem37, align 4
  store i32 %.reload38, i32* %.reload38.reg2mem, align 4
  %199 = load i32, i32* @x.77, align 4
  %200 = load i32, i32* @y.78, align 4
  %201 = icmp slt i32 %200, 10
  %202 = add i32 %199, 1
  %203 = mul i32 %199, %202
  %204 = srem i32 %203, 2
  %205 = icmp eq i32 %204, 0
  %206 = or i1 %201, %205
  br i1 %206, label %endBB40, label %BodyBB39cloneBB

endBB40:                                          ; preds = %BodyBB39
  %.reload38.reload = load volatile i32, i32* %.reload38.reg2mem, align 4
  ret i32 %.reload38.reload

BodyBBcloneBB:                                    ; preds = %BodyBB, %0
  %207 = alloca i32, align 4
  store i32* %207, i32** %.reg2mem, align 8
  %208 = alloca [100 x i8], align 16
  store [100 x i8]* %208, [100 x i8]** %.reg2mem2, align 8
  %209 = alloca i8, align 1
  store i8* %209, i8** %.reg2mem6, align 8
  %.reload1cloneBB = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload1cloneBB, align 4
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %211 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %.reload5cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %212 = bitcast [100 x i8]* %.reload5cloneBB to i8*
  store i8* %212, i8** %.reg2mem9, align 8
  br label %BodyBB

BodyBB11cloneBB:                                  ; preds = %BodyBB11, %23
  %.reload10cloneBB = load volatile i8*, i8** %.reg2mem9, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 %.reload10cloneBB, i8 0, i64 100, i1 false)
  %.reload4cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %213 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload4cloneBB, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %213, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %214 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #5
  %215 = icmp eq i64 %214, 22
  store i1 %215, i1* %.reg2mem13, align 1
  br label %BodyBB11

BodyBB15cloneBB:                                  ; preds = %BodyBB15, %43
  %.reload3cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %216 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload3cloneBB, i64 0, i64 0
  %217 = call i32 @memcmp(i8* %216, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %218 = icmp ne i32 %217, 0
  store i1 %218, i1* %.reg2mem17, align 1
  br label %BodyBB15

BodyBB19cloneBB:                                  ; preds = %BodyBB19, %63
  %.reload18cloneBB = load volatile i1, i1* %.reg2mem17, align 1
  %219 = xor i1 %.reload18cloneBB, true
  store i1 %219, i1* %.reg2mem21, align 1
  br label %BodyBB19

BodyBB23cloneBB:                                  ; preds = %BodyBB23, %81
  %220 = zext i1 %82 to i8
  %.reload8cloneBB = load volatile i8*, i8** %.reg2mem6, align 8
  store i8 %220, i8* %.reload8cloneBB, align 1
  %.reload7cloneBB = load volatile i8*, i8** %.reg2mem6, align 8
  %221 = load i8, i8* %.reload7cloneBB, align 1
  %222 = trunc i8 %221 to i1
  store i1 %222, i1* %.reg2mem25, align 1
  br label %BodyBB23

BodyBB27cloneBB:                                  ; preds = %BodyBB27, %102
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %BodyBB27

BodyBB29cloneBB:                                  ; preds = %BodyBB29, %120
  br label %BodyBB29

BodyBB31cloneBB:                                  ; preds = %BodyBB31, %137
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %BodyBB31

BodyBB33cloneBB:                                  ; preds = %BodyBB33, %155
  br label %BodyBB33

BodyBB35cloneBB:                                  ; preds = %BodyBB35, %172
  %.reloadcloneBB = load volatile i32*, i32** %.reg2mem, align 8
  %225 = load i32, i32* %.reloadcloneBB, align 4
  store i32 %225, i32* %.reg2mem37, align 4
  br label %BodyBB35

BodyBB39cloneBB:                                  ; preds = %BodyBB39, %190
  %.reload38cloneBB = load volatile i32, i32* %.reg2mem37, align 4
  store i32 %.reload38cloneBB, i32* %.reload38.reg2mem, align 4
  br label %BodyBB39
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

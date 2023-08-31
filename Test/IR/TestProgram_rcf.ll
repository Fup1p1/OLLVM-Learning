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
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem28 = alloca i1, align 1
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem9 = alloca i32*, align 8
  %.reg2mem6 = alloca i32*, align 8
  %.reg2mem2 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %3 = call { i32, i32 } @llvm.x86.rdrand.32()
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = mul i32 %4, 3
  %6 = sub i32 %4, 2
  %7 = mul i32 %5, %6
  %8 = mul i32 %4, %4
  %9 = mul i32 %8, 3
  %10 = mul i32 %4, 7
  %11 = sub i32 %7, %9
  %12 = add i32 %10, %11
  %13 = urem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %entryBB, label %entryBBcloneBB

entryBB:                                          ; preds = %entryBBcloneBB, %2
  %15 = alloca i8*, align 8
  store i8** %15, i8*** %.reg2mem, align 8
  %16 = alloca i8*, align 8
  store i8** %16, i8*** %.reg2mem2, align 8
  %17 = alloca i32, align 4
  store i32* %17, i32** %.reg2mem6, align 8
  %18 = alloca i32, align 4
  store i32* %18, i32** %.reg2mem9, align 8
  %.reload1 = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1, align 8
  %.reload5 = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5, align 8
  %19 = add i32 %4, 1
  %20 = mul i32 %4, %19
  %21 = mul i32 %4, %4
  %22 = sub i32 %20, %21
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %endBB, label %entryBBcloneBB

endBB:                                            ; preds = %entryBB, %entryBBcloneBB
  br label %25

25:                                               ; preds = %endBB
  %26 = call { i32, i32 } @llvm.x86.rdrand.32()
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = add i32 %27, 1
  %29 = mul i32 %27, %28
  %30 = mul i32 %27, %27
  %31 = sub i32 %29, %30
  %32 = urem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %entryBB18, label %entryBB18cloneBB

entryBB18:                                        ; preds = %entryBB18cloneBB, %25
  %.reload4 = load volatile i8**, i8*** %.reg2mem2, align 8
  %34 = load i8*, i8** %.reload4, align 8
  %35 = call i64 @strlen(i8* %34) #6
  %36 = trunc i64 %35 to i32
  %.reload8 = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %36, i32* %.reload8, align 4
  %.reload17 = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17, align 4
  %37 = add i32 %27, 1
  %38 = mul i32 %27, %37
  %39 = mul i32 %27, %27
  %40 = sub i32 %38, %39
  %41 = urem i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %endBB19, label %entryBB18cloneBB

endBB19:                                          ; preds = %entryBB18, %entryBB18cloneBB
  br label %43

43:                                               ; preds = %endBB41, %endBB19
  %44 = call { i32, i32 } @llvm.x86.rdrand.32()
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = add i32 %45, 1
  %47 = mul i32 %45, %46
  %48 = mul i32 %45, %45
  %49 = sub i32 %47, %48
  %50 = urem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %entryBB20, label %entryBB20cloneBB

entryBB20:                                        ; preds = %entryBB20cloneBB, %43
  %.reload16 = load volatile i32*, i32** %.reg2mem9, align 8
  %52 = load i32, i32* %.reload16, align 4
  store i32 %52, i32* %.reg2mem22, align 4
  %.reload7 = load volatile i32*, i32** %.reg2mem6, align 8
  %53 = load i32, i32* %.reload7, align 4
  store i32 %53, i32* %.reg2mem24, align 4
  %54 = sub i32 %45, 1
  %55 = add i32 %45, 3
  %56 = add i32 %45, 4
  %57 = sub i32 %45, 3
  %58 = mul i32 %54, %55
  %59 = mul i32 %56, %57
  %60 = sub i32 %58, %59
  %61 = sub i32 %60, 9
  %62 = urem i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %endBB21, label %entryBB20cloneBB

endBB21:                                          ; preds = %entryBB20, %entryBB20cloneBB
  br label %64

64:                                               ; preds = %endBB21
  %65 = call { i32, i32 } @llvm.x86.rdrand.32()
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = sub i32 %66, 1
  %68 = add i32 %66, 3
  %69 = add i32 %66, 4
  %70 = sub i32 %66, 3
  %71 = mul i32 %67, %68
  %72 = mul i32 %69, %70
  %73 = sub i32 %71, %72
  %74 = sub i32 %73, 9
  %75 = urem i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %entryBB26, label %entryBB26cloneBB

entryBB26:                                        ; preds = %entryBB26cloneBB, %64
  %.reload23 = load volatile i32, i32* %.reg2mem22, align 4
  %.reload25 = load volatile i32, i32* %.reg2mem24, align 4
  %77 = icmp slt i32 %.reload23, %.reload25
  store i1 %77, i1* %.reg2mem28, align 1
  %78 = mul i32 %66, 3
  %79 = sub i32 %66, 2
  %80 = mul i32 %78, %79
  %81 = mul i32 %66, %66
  %82 = mul i32 %81, 3
  %83 = mul i32 %66, 7
  %84 = sub i32 %80, %82
  %85 = add i32 %83, %84
  %86 = urem i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %endBB27, label %entryBB26cloneBB

endBB27:                                          ; preds = %entryBB26, %entryBB26cloneBB
  %.reload29 = load volatile i1, i1* %.reg2mem28, align 1
  br i1 %.reload29, label %88, label %190

88:                                               ; preds = %endBB27
  %89 = call { i32, i32 } @llvm.x86.rdrand.32()
  %90 = extractvalue { i32, i32 } %89, 0
  %91 = add i32 %90, 1
  %92 = mul i32 %90, %91
  %93 = mul i32 %90, %90
  %94 = sub i32 %92, %93
  %95 = urem i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %entryBB30, label %entryBB30cloneBB

entryBB30:                                        ; preds = %entryBB30cloneBB, %88
  %.reload3 = load volatile i8**, i8*** %.reg2mem2, align 8
  %97 = load i8*, i8** %.reload3, align 8
  %.reload15 = load volatile i32*, i32** %.reg2mem9, align 8
  %98 = load i32, i32* %.reload15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %.reload14 = load volatile i32*, i32** %.reg2mem9, align 8
  %103 = load i32, i32* %.reload14, align 4
  %104 = sub nsw i32 32, %103
  %105 = add nsw i32 %102, %104
  store i32 %105, i32* %.reg2mem32, align 4
  %106 = add i32 %90, 1
  %107 = mul i32 %90, %106
  %108 = mul i32 %90, %90
  %109 = sub i32 %107, %108
  %110 = urem i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %endBB31, label %entryBB30cloneBB

endBB31:                                          ; preds = %entryBB30, %entryBB30cloneBB
  br label %112

112:                                              ; preds = %endBB31
  %113 = call { i32, i32 } @llvm.x86.rdrand.32()
  %114 = extractvalue { i32, i32 } %113, 0
  %115 = sub i32 %114, 1
  %116 = add i32 %114, 3
  %117 = add i32 %114, 4
  %118 = sub i32 %114, 3
  %119 = mul i32 %115, %116
  %120 = mul i32 %117, %118
  %121 = sub i32 %119, %120
  %122 = sub i32 %121, 9
  %123 = urem i32 %122, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %entryBB34, label %entryBB34cloneBB

entryBB34:                                        ; preds = %entryBB34cloneBB, %112
  %.reload13 = load volatile i32*, i32** %.reg2mem9, align 8
  %125 = load i32, i32* %.reload13, align 4
  %.reload33 = load volatile i32, i32* %.reg2mem32, align 4
  %126 = xor i32 %.reload33, %125
  %127 = trunc i32 %126 to i8
  %.reload = load volatile i8**, i8*** %.reg2mem, align 8
  %128 = load i8*, i8** %.reload, align 8
  %.reload12 = load volatile i32*, i32** %.reg2mem9, align 8
  %129 = load i32, i32* %.reload12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %127, i8* %131, align 1
  %132 = mul i32 %114, 3
  %133 = sub i32 %114, 2
  %134 = mul i32 %132, %133
  %135 = mul i32 %114, %114
  %136 = mul i32 %135, 3
  %137 = mul i32 %114, 7
  %138 = sub i32 %134, %136
  %139 = add i32 %137, %138
  %140 = urem i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %endBB35, label %entryBB34cloneBB

endBB35:                                          ; preds = %entryBB34, %entryBB34cloneBB
  br label %142

142:                                              ; preds = %endBB35
  %143 = call { i32, i32 } @llvm.x86.rdrand.32()
  %144 = extractvalue { i32, i32 } %143, 0
  %145 = mul i32 %144, 3
  %146 = sub i32 %144, 2
  %147 = mul i32 %145, %146
  %148 = mul i32 %144, %144
  %149 = mul i32 %148, 3
  %150 = mul i32 %144, 7
  %151 = sub i32 %147, %149
  %152 = add i32 %150, %151
  %153 = urem i32 %152, 2
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %entryBB36, label %entryBB36cloneBB

entryBB36:                                        ; preds = %entryBB36cloneBB, %142
  %.reload11 = load volatile i32*, i32** %.reg2mem9, align 8
  %155 = load i32, i32* %.reload11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %.reg2mem38, align 4
  %157 = mul i32 %144, 3
  %158 = sub i32 %144, 2
  %159 = mul i32 %157, %158
  %160 = mul i32 %144, %144
  %161 = mul i32 %160, 3
  %162 = mul i32 %144, 7
  %163 = sub i32 %159, %161
  %164 = add i32 %162, %163
  %165 = urem i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %endBB37, label %entryBB36cloneBB

endBB37:                                          ; preds = %entryBB36, %entryBB36cloneBB
  br label %167

167:                                              ; preds = %endBB37
  %168 = call { i32, i32 } @llvm.x86.rdrand.32()
  %169 = extractvalue { i32, i32 } %168, 0
  %170 = sub i32 %169, 1
  %171 = add i32 %169, 3
  %172 = add i32 %169, 4
  %173 = sub i32 %169, 3
  %174 = mul i32 %170, %171
  %175 = mul i32 %172, %173
  %176 = sub i32 %174, %175
  %177 = sub i32 %176, 9
  %178 = urem i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %entryBB40, label %entryBB40cloneBB

entryBB40:                                        ; preds = %entryBB40cloneBB, %167
  %.reload10 = load volatile i32*, i32** %.reg2mem9, align 8
  %.reload39 = load volatile i32, i32* %.reg2mem38, align 4
  store i32 %.reload39, i32* %.reload10, align 4
  %180 = sub i32 %169, 1
  %181 = add i32 %169, 3
  %182 = add i32 %169, 4
  %183 = sub i32 %169, 3
  %184 = mul i32 %180, %181
  %185 = mul i32 %182, %183
  %186 = sub i32 %184, %185
  %187 = sub i32 %186, 9
  %188 = urem i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %endBB41, label %entryBB40cloneBB

endBB41:                                          ; preds = %entryBB40, %entryBB40cloneBB
  br label %43, !llvm.loop !2

190:                                              ; preds = %endBB27
  %191 = call { i32, i32 } @llvm.x86.rdrand.32()
  %192 = extractvalue { i32, i32 } %191, 0
  %193 = mul i32 %192, 3
  %194 = sub i32 %192, 2
  %195 = mul i32 %193, %194
  %196 = mul i32 %192, %192
  %197 = mul i32 %196, 3
  %198 = mul i32 %192, 7
  %199 = sub i32 %195, %197
  %200 = add i32 %198, %199
  %201 = urem i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %entryBB42, label %entryBB42cloneBB

entryBB42:                                        ; preds = %entryBB42cloneBB, %190
  %203 = sub i32 %192, 1
  %204 = add i32 %192, 3
  %205 = add i32 %192, 4
  %206 = sub i32 %192, 3
  %207 = mul i32 %203, %204
  %208 = mul i32 %205, %206
  %209 = sub i32 %207, %208
  %210 = sub i32 %209, 9
  %211 = urem i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %endBB43, label %entryBB42cloneBB

endBB43:                                          ; preds = %entryBB42, %entryBB42cloneBB
  ret void

entryBBcloneBB:                                   ; preds = %entryBB, %2
  %213 = alloca i8*, align 8
  store i8** %213, i8*** %.reg2mem, align 8
  %214 = alloca i8*, align 8
  store i8** %214, i8*** %.reg2mem2, align 8
  %215 = alloca i32, align 4
  store i32* %215, i32** %.reg2mem6, align 8
  %216 = alloca i32, align 4
  store i32* %216, i32** %.reg2mem9, align 8
  %.reload1cloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1cloneBB, align 8
  %.reload5cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5cloneBB, align 8
  %217 = add i32 %4, 1
  %218 = mul i32 %4, %217
  %219 = mul i32 %4, %4
  %220 = sub i32 %218, %219
  %221 = urem i32 %220, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %entryBB, label %endBB

entryBB18cloneBB:                                 ; preds = %entryBB18, %25
  %.reload4cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %223 = load i8*, i8** %.reload4cloneBB, align 8
  %224 = call i64 @strlen(i8* %223) #6
  %225 = trunc i64 %224 to i32
  %.reload8cloneBB = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %225, i32* %.reload8cloneBB, align 4
  %.reload17cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17cloneBB, align 4
  %226 = add i32 %27, 1
  %227 = mul i32 %27, %226
  %228 = mul i32 %27, %27
  %229 = sub i32 %227, %228
  %230 = urem i32 %229, 2
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %entryBB18, label %endBB19

entryBB20cloneBB:                                 ; preds = %entryBB20, %43
  %.reload16cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %232 = load i32, i32* %.reload16cloneBB, align 4
  store i32 %232, i32* %.reg2mem22, align 4
  %.reload7cloneBB = load volatile i32*, i32** %.reg2mem6, align 8
  %233 = load i32, i32* %.reload7cloneBB, align 4
  store i32 %233, i32* %.reg2mem24, align 4
  %234 = sub i32 %45, 1
  %235 = add i32 %45, 3
  %236 = add i32 %45, 4
  %237 = sub i32 %45, 3
  %238 = mul i32 %234, %235
  %239 = mul i32 %236, %237
  %240 = sub i32 %238, %239
  %241 = sub i32 %240, 9
  %242 = urem i32 %241, 2
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %entryBB20, label %endBB21

entryBB26cloneBB:                                 ; preds = %entryBB26, %64
  %.reload23cloneBB = load volatile i32, i32* %.reg2mem22, align 4
  %.reload25cloneBB = load volatile i32, i32* %.reg2mem24, align 4
  %244 = icmp slt i32 %.reload23cloneBB, %.reload25cloneBB
  store i1 %244, i1* %.reg2mem28, align 1
  %245 = mul i32 %66, 3
  %246 = sub i32 %66, 2
  %247 = mul i32 %245, %246
  %248 = mul i32 %66, %66
  %249 = mul i32 %248, 3
  %250 = mul i32 %66, 7
  %251 = sub i32 %247, %249
  %252 = add i32 %250, %251
  %253 = urem i32 %252, 2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %entryBB26, label %endBB27

entryBB30cloneBB:                                 ; preds = %entryBB30, %88
  %.reload3cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %255 = load i8*, i8** %.reload3cloneBB, align 8
  %.reload15cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %256 = load i32, i32* %.reload15cloneBB, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %.reload14cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %261 = load i32, i32* %.reload14cloneBB, align 4
  %262 = sub nsw i32 32, %261
  %263 = add nsw i32 %260, %262
  store i32 %263, i32* %.reg2mem32, align 4
  %264 = add i32 %90, 1
  %265 = mul i32 %90, %264
  %266 = mul i32 %90, %90
  %267 = sub i32 %265, %266
  %268 = urem i32 %267, 2
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %entryBB30, label %endBB31

entryBB34cloneBB:                                 ; preds = %entryBB34, %112
  %.reload13cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %270 = load i32, i32* %.reload13cloneBB, align 4
  %.reload33cloneBB = load volatile i32, i32* %.reg2mem32, align 4
  %271 = xor i32 %.reload33cloneBB, %270
  %272 = trunc i32 %271 to i8
  %.reloadcloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  %273 = load i8*, i8** %.reloadcloneBB, align 8
  %.reload12cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %274 = load i32, i32* %.reload12cloneBB, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  store i8 %272, i8* %276, align 1
  %277 = mul i32 %114, 3
  %278 = sub i32 %114, 2
  %279 = mul i32 %277, %278
  %280 = mul i32 %114, %114
  %281 = mul i32 %280, 3
  %282 = mul i32 %114, 7
  %283 = sub i32 %279, %281
  %284 = add i32 %282, %283
  %285 = urem i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %entryBB34, label %endBB35

entryBB36cloneBB:                                 ; preds = %entryBB36, %142
  %.reload11cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %287 = load i32, i32* %.reload11cloneBB, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %.reg2mem38, align 4
  %289 = add i32 %144, 1
  %290 = mul i32 %144, %289
  %291 = mul i32 %144, %144
  %292 = sub i32 %290, %291
  %293 = urem i32 %292, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %entryBB36, label %endBB37

entryBB40cloneBB:                                 ; preds = %entryBB40, %167
  %.reload10cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %.reload39cloneBB = load volatile i32, i32* %.reg2mem38, align 4
  store i32 %.reload39cloneBB, i32* %.reload10cloneBB, align 4
  %295 = mul i32 %169, 3
  %296 = sub i32 %169, 2
  %297 = mul i32 %295, %296
  %298 = mul i32 %169, %169
  %299 = mul i32 %298, 3
  %300 = mul i32 %169, 7
  %301 = sub i32 %297, %299
  %302 = add i32 %300, %301
  %303 = urem i32 %302, 2
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %entryBB40, label %endBB41

entryBB42cloneBB:                                 ; preds = %entryBB42, %190
  %305 = add i32 %192, 1
  %306 = mul i32 %192, %305
  %307 = mul i32 %192, %192
  %308 = sub i32 %306, %307
  %309 = urem i32 %308, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %entryBB42, label %endBB43
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
  %1 = call { i32, i32 } @llvm.x86.rdrand.32()
  %2 = extractvalue { i32, i32 } %1, 0
  %3 = add i32 %2, 1
  %4 = mul i32 %2, %3
  %5 = mul i32 %2, %2
  %6 = sub i32 %4, %5
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %entryBB, label %entryBBcloneBB

entryBB:                                          ; preds = %entryBBcloneBB, %0
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
  %15 = mul i32 %2, 3
  %16 = sub i32 %2, 2
  %17 = mul i32 %15, %16
  %18 = mul i32 %2, %2
  %19 = mul i32 %18, 3
  %20 = mul i32 %2, 7
  %21 = sub i32 %17, %19
  %22 = add i32 %20, %21
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %endBB, label %entryBBcloneBB

endBB:                                            ; preds = %entryBB, %entryBBcloneBB
  br label %25

25:                                               ; preds = %endBB
  %26 = call { i32, i32 } @llvm.x86.rdrand.32()
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = sub i32 %27, 1
  %29 = add i32 %27, 3
  %30 = add i32 %27, 4
  %31 = sub i32 %27, 3
  %32 = mul i32 %28, %29
  %33 = mul i32 %30, %31
  %34 = sub i32 %32, %33
  %35 = sub i32 %34, 9
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %entryBB11, label %entryBB11cloneBB

entryBB11:                                        ; preds = %entryBB11cloneBB, %25
  %.reload10 = load volatile i8*, i8** %.reg2mem9, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 %.reload10, i8 0, i64 100, i1 false)
  %.reload4 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload4, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %38, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %39 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #6
  %40 = icmp eq i64 %39, 22
  store i1 %40, i1* %.reg2mem13, align 1
  %41 = sub i32 %27, 1
  %42 = add i32 %27, 3
  %43 = add i32 %27, 4
  %44 = sub i32 %27, 3
  %45 = mul i32 %41, %42
  %46 = mul i32 %43, %44
  %47 = sub i32 %45, %46
  %48 = sub i32 %47, 9
  %49 = urem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %endBB12, label %entryBB11cloneBB

endBB12:                                          ; preds = %entryBB11, %entryBB11cloneBB
  %.reload14 = load volatile i1, i1* %.reg2mem13, align 1
  br i1 %.reload14, label %51, label %101

51:                                               ; preds = %endBB12
  %52 = call { i32, i32 } @llvm.x86.rdrand.32()
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = sub i32 %53, 1
  %55 = add i32 %53, 3
  %56 = add i32 %53, 4
  %57 = sub i32 %53, 3
  %58 = mul i32 %54, %55
  %59 = mul i32 %56, %57
  %60 = sub i32 %58, %59
  %61 = sub i32 %60, 9
  %62 = urem i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %entryBB15, label %entryBB15cloneBB

entryBB15:                                        ; preds = %entryBB15cloneBB, %51
  %.reload3 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload3, i64 0, i64 0
  %65 = call i32 @memcmp(i8* %64, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #6
  %66 = icmp ne i32 %65, 0
  store i1 %66, i1* %.reg2mem17, align 1
  %67 = sub i32 %53, 1
  %68 = add i32 %53, 3
  %69 = add i32 %53, 4
  %70 = sub i32 %53, 3
  %71 = mul i32 %67, %68
  %72 = mul i32 %69, %70
  %73 = sub i32 %71, %72
  %74 = sub i32 %73, 9
  %75 = urem i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %endBB16, label %entryBB15cloneBB

endBB16:                                          ; preds = %entryBB15, %entryBB15cloneBB
  br label %77

77:                                               ; preds = %endBB16
  %78 = call { i32, i32 } @llvm.x86.rdrand.32()
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = mul i32 %79, 3
  %81 = sub i32 %79, 2
  %82 = mul i32 %80, %81
  %83 = mul i32 %79, %79
  %84 = mul i32 %83, 3
  %85 = mul i32 %79, 7
  %86 = sub i32 %82, %84
  %87 = add i32 %85, %86
  %88 = urem i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %entryBB19, label %entryBB19cloneBB

entryBB19:                                        ; preds = %entryBB19cloneBB, %77
  %.reload18 = load volatile i1, i1* %.reg2mem17, align 1
  %90 = xor i1 %.reload18, true
  store i1 %90, i1* %.reg2mem21, align 1
  %91 = mul i32 %79, 3
  %92 = sub i32 %79, 2
  %93 = mul i32 %91, %92
  %94 = mul i32 %79, %79
  %95 = mul i32 %94, 3
  %96 = mul i32 %79, 7
  %97 = sub i32 %93, %95
  %98 = add i32 %96, %97
  %99 = urem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %endBB20, label %entryBB19cloneBB

endBB20:                                          ; preds = %entryBB19, %entryBB19cloneBB
  %.reload22 = load volatile i1, i1* %.reg2mem21, align 1
  br label %101

101:                                              ; preds = %endBB20, %endBB12
  %102 = phi i1 [ false, %endBB12 ], [ %.reload22, %endBB20 ]
  %103 = call { i32, i32 } @llvm.x86.rdrand.32()
  %104 = extractvalue { i32, i32 } %103, 0
  %105 = add i32 %104, 1
  %106 = mul i32 %104, %105
  %107 = mul i32 %104, %104
  %108 = sub i32 %106, %107
  %109 = urem i32 %108, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %entryBB23, label %entryBB23cloneBB

entryBB23:                                        ; preds = %entryBB23cloneBB, %101
  %111 = zext i1 %102 to i8
  %.reload8 = load volatile i8*, i8** %.reg2mem6, align 8
  store i8 %111, i8* %.reload8, align 1
  %.reload7 = load volatile i8*, i8** %.reg2mem6, align 8
  %112 = load i8, i8* %.reload7, align 1
  %113 = trunc i8 %112 to i1
  store i1 %113, i1* %.reg2mem25, align 1
  %114 = add i32 %104, 1
  %115 = mul i32 %104, %114
  %116 = mul i32 %104, %104
  %117 = sub i32 %115, %116
  %118 = urem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %endBB24, label %entryBB23cloneBB

endBB24:                                          ; preds = %entryBB23, %entryBB23cloneBB
  %.reload26 = load volatile i1, i1* %.reg2mem25, align 1
  br i1 %.reload26, label %120, label %167

120:                                              ; preds = %endBB24
  %121 = call { i32, i32 } @llvm.x86.rdrand.32()
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = sub i32 %122, 1
  %124 = add i32 %122, 3
  %125 = add i32 %122, 4
  %126 = sub i32 %122, 3
  %127 = mul i32 %123, %124
  %128 = mul i32 %125, %126
  %129 = sub i32 %127, %128
  %130 = sub i32 %129, 9
  %131 = urem i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %entryBB27, label %entryBB27cloneBB

entryBB27:                                        ; preds = %entryBB27cloneBB, %120
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %134 = mul i32 %122, 3
  %135 = sub i32 %122, 2
  %136 = mul i32 %134, %135
  %137 = mul i32 %122, %122
  %138 = mul i32 %137, 3
  %139 = mul i32 %122, 7
  %140 = sub i32 %136, %138
  %141 = add i32 %139, %140
  %142 = urem i32 %141, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %endBB28, label %entryBB27cloneBB

endBB28:                                          ; preds = %entryBB27, %entryBB27cloneBB
  br label %144

144:                                              ; preds = %endBB28
  %145 = call { i32, i32 } @llvm.x86.rdrand.32()
  %146 = extractvalue { i32, i32 } %145, 0
  %147 = sub i32 %146, 1
  %148 = add i32 %146, 3
  %149 = add i32 %146, 4
  %150 = sub i32 %146, 3
  %151 = mul i32 %147, %148
  %152 = mul i32 %149, %150
  %153 = sub i32 %151, %152
  %154 = sub i32 %153, 9
  %155 = urem i32 %154, 2
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %entryBB29, label %entryBB29cloneBB

entryBB29:                                        ; preds = %entryBB29cloneBB, %144
  %157 = sub i32 %146, 1
  %158 = add i32 %146, 3
  %159 = add i32 %146, 4
  %160 = sub i32 %146, 3
  %161 = mul i32 %157, %158
  %162 = mul i32 %159, %160
  %163 = sub i32 %161, %162
  %164 = sub i32 %163, 9
  %165 = urem i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %endBB30, label %entryBB29cloneBB

endBB30:                                          ; preds = %entryBB29, %entryBB29cloneBB
  br label %206

167:                                              ; preds = %endBB24
  %168 = call { i32, i32 } @llvm.x86.rdrand.32()
  %169 = extractvalue { i32, i32 } %168, 0
  %170 = mul i32 %169, 3
  %171 = sub i32 %169, 2
  %172 = mul i32 %170, %171
  %173 = mul i32 %169, %169
  %174 = mul i32 %173, 3
  %175 = mul i32 %169, 7
  %176 = sub i32 %172, %174
  %177 = add i32 %175, %176
  %178 = urem i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %entryBB31, label %entryBB31cloneBB

entryBB31:                                        ; preds = %entryBB31cloneBB, %167
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %181 = add i32 %169, 1
  %182 = mul i32 %169, %181
  %183 = mul i32 %169, %169
  %184 = sub i32 %182, %183
  %185 = urem i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %endBB32, label %entryBB31cloneBB

endBB32:                                          ; preds = %entryBB31, %entryBB31cloneBB
  br label %187

187:                                              ; preds = %endBB32
  %188 = call { i32, i32 } @llvm.x86.rdrand.32()
  %189 = extractvalue { i32, i32 } %188, 0
  %190 = sub i32 %189, 1
  %191 = add i32 %189, 3
  %192 = add i32 %189, 4
  %193 = sub i32 %189, 3
  %194 = mul i32 %190, %191
  %195 = mul i32 %192, %193
  %196 = sub i32 %194, %195
  %197 = sub i32 %196, 9
  %198 = urem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %entryBB33, label %entryBB33cloneBB

entryBB33:                                        ; preds = %entryBB33cloneBB, %187
  %200 = add i32 %189, 1
  %201 = mul i32 %189, %200
  %202 = mul i32 %189, %189
  %203 = sub i32 %201, %202
  %204 = urem i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %endBB34, label %entryBB33cloneBB

endBB34:                                          ; preds = %entryBB33, %entryBB33cloneBB
  br label %206

206:                                              ; preds = %endBB34, %endBB30
  %207 = call { i32, i32 } @llvm.x86.rdrand.32()
  %208 = extractvalue { i32, i32 } %207, 0
  %209 = add i32 %208, 1
  %210 = mul i32 %208, %209
  %211 = mul i32 %208, %208
  %212 = sub i32 %210, %211
  %213 = urem i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %entryBB35, label %entryBB35cloneBB

entryBB35:                                        ; preds = %entryBB35cloneBB, %206
  %.reload = load volatile i32*, i32** %.reg2mem, align 8
  %215 = load i32, i32* %.reload, align 4
  store i32 %215, i32* %.reg2mem37, align 4
  %216 = add i32 %208, 1
  %217 = mul i32 %208, %216
  %218 = mul i32 %208, %208
  %219 = sub i32 %217, %218
  %220 = urem i32 %219, 2
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %endBB36, label %entryBB35cloneBB

endBB36:                                          ; preds = %entryBB35, %entryBB35cloneBB
  br label %222

222:                                              ; preds = %endBB36
  %223 = call { i32, i32 } @llvm.x86.rdrand.32()
  %224 = extractvalue { i32, i32 } %223, 0
  %225 = sub i32 %224, 1
  %226 = add i32 %224, 3
  %227 = add i32 %224, 4
  %228 = sub i32 %224, 3
  %229 = mul i32 %225, %226
  %230 = mul i32 %227, %228
  %231 = sub i32 %229, %230
  %232 = sub i32 %231, 9
  %233 = urem i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %entryBB39, label %entryBB39cloneBB

entryBB39:                                        ; preds = %entryBB39cloneBB, %222
  %.reload38 = load volatile i32, i32* %.reg2mem37, align 4
  store i32 %.reload38, i32* %.reload38.reg2mem, align 4
  %235 = add i32 %224, 1
  %236 = mul i32 %224, %235
  %237 = mul i32 %224, %224
  %238 = sub i32 %236, %237
  %239 = urem i32 %238, 2
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %endBB40, label %entryBB39cloneBB

endBB40:                                          ; preds = %entryBB39, %entryBB39cloneBB
  %.reload38.reload = load volatile i32, i32* %.reload38.reg2mem, align 4
  ret i32 %.reload38.reload

entryBBcloneBB:                                   ; preds = %entryBB, %0
  %241 = alloca i32, align 4
  store i32* %241, i32** %.reg2mem, align 8
  %242 = alloca [100 x i8], align 16
  store [100 x i8]* %242, [100 x i8]** %.reg2mem2, align 8
  %243 = alloca i8, align 1
  store i8* %243, i8** %.reg2mem6, align 8
  %.reload1cloneBB = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload1cloneBB, align 4
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %245 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %.reload5cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %246 = bitcast [100 x i8]* %.reload5cloneBB to i8*
  store i8* %246, i8** %.reg2mem9, align 8
  %247 = add i32 %2, 1
  %248 = mul i32 %2, %247
  %249 = mul i32 %2, %2
  %250 = sub i32 %248, %249
  %251 = urem i32 %250, 2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %entryBB, label %endBB

entryBB11cloneBB:                                 ; preds = %entryBB11, %25
  %.reload10cloneBB = load volatile i8*, i8** %.reg2mem9, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 %.reload10cloneBB, i8 0, i64 100, i1 false)
  %.reload4cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %253 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload4cloneBB, i64 0, i64 0
  call void @_Z7encryptPhPc(i8* %253, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0))
  %254 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @input, i64 0, i64 0)) #6
  %255 = icmp eq i64 %254, 22
  store i1 %255, i1* %.reg2mem13, align 1
  %256 = mul i32 %27, 3
  %257 = sub i32 %27, 2
  %258 = mul i32 %256, %257
  %259 = mul i32 %27, %27
  %260 = mul i32 %259, 3
  %261 = mul i32 %27, 7
  %262 = sub i32 %258, %260
  %263 = add i32 %261, %262
  %264 = urem i32 %263, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %entryBB11, label %endBB12

entryBB15cloneBB:                                 ; preds = %entryBB15, %51
  %.reload3cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem2, align 8
  %266 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload3cloneBB, i64 0, i64 0
  %267 = call i32 @memcmp(i8* %266, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #6
  %268 = icmp ne i32 %267, 0
  store i1 %268, i1* %.reg2mem17, align 1
  %269 = add i32 %53, 1
  %270 = mul i32 %53, %269
  %271 = mul i32 %53, %53
  %272 = sub i32 %270, %271
  %273 = urem i32 %272, 2
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %entryBB15, label %endBB16

entryBB19cloneBB:                                 ; preds = %entryBB19, %77
  %.reload18cloneBB = load volatile i1, i1* %.reg2mem17, align 1
  %275 = xor i1 %.reload18cloneBB, true
  store i1 %275, i1* %.reg2mem21, align 1
  %276 = add i32 %79, 1
  %277 = mul i32 %79, %276
  %278 = mul i32 %79, %79
  %279 = sub i32 %277, %278
  %280 = urem i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %entryBB19, label %endBB20

entryBB23cloneBB:                                 ; preds = %entryBB23, %101
  %282 = zext i1 %102 to i8
  %.reload8cloneBB = load volatile i8*, i8** %.reg2mem6, align 8
  store i8 %282, i8* %.reload8cloneBB, align 1
  %.reload7cloneBB = load volatile i8*, i8** %.reg2mem6, align 8
  %283 = load i8, i8* %.reload7cloneBB, align 1
  %284 = trunc i8 %283 to i1
  store i1 %284, i1* %.reg2mem25, align 1
  %285 = sub i32 %104, 1
  %286 = add i32 %104, 3
  %287 = add i32 %104, 4
  %288 = sub i32 %104, 3
  %289 = mul i32 %285, %286
  %290 = mul i32 %287, %288
  %291 = sub i32 %289, %290
  %292 = sub i32 %291, 9
  %293 = urem i32 %292, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %entryBB23, label %endBB24

entryBB27cloneBB:                                 ; preds = %entryBB27, %120
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %296 = mul i32 %122, 3
  %297 = sub i32 %122, 2
  %298 = mul i32 %296, %297
  %299 = mul i32 %122, %122
  %300 = mul i32 %299, 3
  %301 = mul i32 %122, 7
  %302 = sub i32 %298, %300
  %303 = add i32 %301, %302
  %304 = urem i32 %303, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %entryBB27, label %endBB28

entryBB29cloneBB:                                 ; preds = %entryBB29, %144
  %306 = mul i32 %146, 3
  %307 = sub i32 %146, 2
  %308 = mul i32 %306, %307
  %309 = mul i32 %146, %146
  %310 = mul i32 %309, 3
  %311 = mul i32 %146, 7
  %312 = sub i32 %308, %310
  %313 = add i32 %311, %312
  %314 = urem i32 %313, 2
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %entryBB29, label %endBB30

entryBB31cloneBB:                                 ; preds = %entryBB31, %167
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %317 = sub i32 %169, 1
  %318 = add i32 %169, 3
  %319 = add i32 %169, 4
  %320 = sub i32 %169, 3
  %321 = mul i32 %317, %318
  %322 = mul i32 %319, %320
  %323 = sub i32 %321, %322
  %324 = sub i32 %323, 9
  %325 = urem i32 %324, 2
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %entryBB31, label %endBB32

entryBB33cloneBB:                                 ; preds = %entryBB33, %187
  %327 = mul i32 %189, 3
  %328 = sub i32 %189, 2
  %329 = mul i32 %327, %328
  %330 = mul i32 %189, %189
  %331 = mul i32 %330, 3
  %332 = mul i32 %189, 7
  %333 = sub i32 %329, %331
  %334 = add i32 %332, %333
  %335 = urem i32 %334, 2
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %entryBB33, label %endBB34

entryBB35cloneBB:                                 ; preds = %entryBB35, %206
  %.reloadcloneBB = load volatile i32*, i32** %.reg2mem, align 8
  %337 = load i32, i32* %.reloadcloneBB, align 4
  store i32 %337, i32* %.reg2mem37, align 4
  %338 = add i32 %208, 1
  %339 = mul i32 %208, %338
  %340 = mul i32 %208, %208
  %341 = sub i32 %339, %340
  %342 = urem i32 %341, 2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %entryBB35, label %endBB36

entryBB39cloneBB:                                 ; preds = %entryBB39, %222
  %.reload38cloneBB = load volatile i32, i32* %.reg2mem37, align 4
  store i32 %.reload38cloneBB, i32* %.reload38.reg2mem, align 4
  %344 = mul i32 %224, 3
  %345 = sub i32 %224, 2
  %346 = mul i32 %344, %345
  %347 = mul i32 %224, %224
  %348 = mul i32 %347, 3
  %349 = mul i32 %224, 7
  %350 = sub i32 %346, %348
  %351 = add i32 %349, %350
  %352 = urem i32 %351, 2
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %entryBB39, label %endBB40
}

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @__isoc99_scanf(i8*, ...) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare { i32, i32 } @llvm.x86.rdrand.32() #5

attributes #0 = { noinline nounwind optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}

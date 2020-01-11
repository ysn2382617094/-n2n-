.class Lcom/umeng/qq/tencent/AuthAgent$b;
.super Ljava/lang/Object;
.source "AuthAgent.java"

# interfaces
.implements Lcom/umeng/qq/tencent/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/qq/tencent/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/qq/tencent/AuthAgent$b$a;
    }
.end annotation


# instance fields
.field a:Lcom/umeng/qq/tencent/IUiListener;

.field final synthetic this$0:Lcom/umeng/qq/tencent/AuthAgent;


# direct methods
.method public constructor <init>(Lcom/umeng/qq/tencent/AuthAgent;Lcom/umeng/qq/tencent/IUiListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->this$0:Lcom/umeng/qq/tencent/AuthAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 231
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 232
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const/4 v0, 0x0

    .line 236
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".9.png"

    .line 241
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    .line 245
    :try_start_1
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p2

    .line 255
    invoke-static {p2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 256
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_2

    .line 259
    :cond_2
    invoke-static {p2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 263
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v0

    .line 266
    :goto_2
    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 270
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 271
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 272
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 273
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 274
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v5, p2

    .line 276
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v5, 0x1

    .line 278
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    const/high16 v6, 0x42700000    # 60.0f

    mul-float v6, v6, v2

    float-to-int v6, v6

    const/high16 v7, 0x41900000    # 18.0f

    mul-float v7, v7, v2

    float-to-int v7, v7

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float v8, v8, v2

    float-to-int v8, v8

    .line 284
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    .line 285
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x0

    .line 286
    invoke-virtual {v9, v6, v7, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    invoke-virtual {v3, v4, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p3

    .line 289
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 290
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x3

    .line 291
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 292
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 293
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v9, 0x2

    .line 294
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setLines(I)V

    const/4 v10, 0x5

    .line 295
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setId(I)V

    const/high16 v11, 0x43390000    # 185.0f

    mul-float v11, v11, v2

    float-to-int v11, v11

    .line 296
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 297
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    invoke-virtual {v11, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v13, 0x6

    .line 299
    invoke-virtual {v11, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v13, 0x40a00000    # 5.0f

    mul-float v13, v13, v2

    float-to-int v14, v13

    .line 300
    invoke-virtual {v11, v6, v6, v14, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 301
    invoke-virtual {v3, v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v11, 0xd6

    .line 303
    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 304
    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    .line 305
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {v11, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    invoke-virtual {v11, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x7

    .line 309
    invoke-virtual {v11, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v14, 0x41400000    # 12.0f

    mul-float v14, v14, v2

    float-to-int v14, v14

    .line 310
    invoke-virtual {v11, v6, v6, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    invoke-virtual {v3, v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 314
    invoke-virtual {v11, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 315
    invoke-virtual {v11, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 316
    invoke-virtual {v11, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v8, "\u8df3\u8fc7"

    .line 318
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v8, "buttonNegt.png"

    .line 319
    invoke-direct {v0, v8, v1}, Lcom/umeng/qq/tencent/AuthAgent$b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 320
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x24

    const/16 v9, 0x61

    const/16 v10, 0x83

    .line 321
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 322
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v9, p5

    .line 323
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x4

    .line 324
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setId(I)V

    .line 325
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42340000    # 45.0f

    mul-float v10, v10, v2

    float-to-int v10, v10

    invoke-direct {v9, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float v7, v7, v2

    float-to-int v7, v7

    .line 326
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v12, 0x40800000    # 4.0f

    mul-float v12, v12, v2

    float-to-int v12, v12

    .line 327
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v15, 0x3f800000    # 1.0f

    .line 328
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 329
    invoke-virtual {v4, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v9, "\u786e\u5b9a"

    .line 331
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v8, 0xff

    .line 333
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    const-string v8, "buttonPost.png"

    .line 334
    invoke-direct {v0, v8, v1}, Lcom/umeng/qq/tencent/AuthAgent$b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 335
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v1, p4

    .line 336
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    iput v15, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 339
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 340
    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v3, v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x438b8000    # 279.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v4, 0x43230000    # 163.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 344
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 345
    invoke-virtual {v3, v7, v6, v14, v14}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 346
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xfb

    const/16 v2, 0xf7

    .line 347
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 348
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 349
    invoke-virtual {v4, v13}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 350
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private a(Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->this$0:Lcom/umeng/qq/tencent/AuthAgent;

    invoke-static {v0}, Lcom/umeng/qq/tencent/AuthAgent;->access$000(Lcom/umeng/qq/tencent/AuthAgent;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 168
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v7, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 175
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 177
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_0

    .line 181
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    .line 184
    :cond_0
    new-instance v5, Lcom/umeng/qq/tencent/AuthAgent$b$1;

    invoke-direct {v5, p0, v7, p2, p3}, Lcom/umeng/qq/tencent/AuthAgent$b$1;-><init>(Lcom/umeng/qq/tencent/AuthAgent$b;Landroid/app/Dialog;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V

    .line 197
    new-instance v6, Lcom/umeng/qq/tencent/AuthAgent$b$2;

    invoke-direct {v6, p0, v7, p2, p3}, Lcom/umeng/qq/tencent/AuthAgent$b$2;-><init>(Lcom/umeng/qq/tencent/AuthAgent$b;Landroid/app/Dialog;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V

    .line 209
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 210
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 211
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    .line 212
    invoke-direct/range {v1 .. v6}, Lcom/umeng/qq/tencent/AuthAgent$b;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 213
    invoke-virtual {v7, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 214
    new-instance p1, Lcom/umeng/qq/tencent/AuthAgent$b$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/qq/tencent/AuthAgent$b$3;-><init>(Lcom/umeng/qq/tencent/AuthAgent$b;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v7, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 224
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    invoke-interface {v0}, Lcom/umeng/qq/tencent/IUiListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 140
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sendinstall"

    .line 146
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "installwording"

    .line 147
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 151
    :goto_0
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/umeng/qq/tencent/AuthAgent$b;->a(Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    invoke-interface {v0, p1}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onError(Lcom/umeng/qq/tencent/UiError;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b;->a:Lcom/umeng/qq/tencent/IUiListener;

    invoke-interface {v0, p1}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    :cond_0
    return-void
.end method

.class public Lcom/tencent/bugly/beta/ui/d;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final a:I

.field final b:[Ljava/lang/Object;

.field c:J

.field d:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/tencent/bugly/beta/ui/d;->d:Ljava/lang/StringBuilder;

    .line 40
    iput p1, p0, Lcom/tencent/bugly/beta/ui/d;->a:I

    .line 41
    iput-object p2, p0, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 47
    :try_start_0
    iget v0, v1, Lcom/tencent/bugly/beta/ui/d;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 144
    :pswitch_0
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v4, v4, v5

    check-cast v4, Landroid/content/Context;

    const/high16 v6, 0x431e0000    # 158.0f

    invoke-static {v4, v6}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 147
    iget-object v4, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v4, v4, v5

    check-cast v4, Landroid/content/Context;

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {v4, v6}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return v5

    .line 92
    :pswitch_1
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 93
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    iget-object v6, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v6, v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    .line 96
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    .line 98
    sget-object v9, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v9, v9, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v10, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v10, v10, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v9, v9, v10

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    mul-int v10, v7, v8

    if-gt v10, v9, :cond_2

    .line 102
    iget-object v9, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 104
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 106
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-ne v0, v4, :cond_1

    const/16 v0, 0x8

    const/4 v10, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    const v11, -0x333334

    .line 115
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 118
    invoke-static {v7, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 119
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v7

    int-to-float v5, v8

    invoke-direct {v14, v3, v3, v15, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v0

    .line 121
    invoke-virtual {v13, v14, v0, v0, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v3, -0x1

    .line 122
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 124
    new-instance v2, Landroid/graphics/RectF;

    sub-float/2addr v15, v3

    sub-float/2addr v5, v3

    invoke-direct {v2, v3, v3, v15, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v3, v10

    .line 125
    invoke-virtual {v13, v2, v3, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 129
    invoke-static {v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {v3, v14, v0, v0, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v2, Lcom/tencent/bugly/beta/global/c;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/c;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 49
    :pswitch_2
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    .line 50
    iget-object v2, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    check-cast v2, Landroid/widget/TextView;

    .line 51
    iget-object v5, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    aget-object v5, v5, v4

    check-cast v5, Landroid/graphics/Bitmap;

    .line 52
    iget-object v6, v1, Lcom/tencent/bugly/beta/ui/d;->b:[Ljava/lang/Object;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 54
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v8, 0x3fdb6db6db6db6dbL    # 0.42857142857142855

    int-to-double v10, v7

    .line 55
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    double-to-int v8, v10

    .line 56
    :try_start_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 57
    iget-object v9, v0, Lcom/tencent/bugly/beta/ui/h;->u:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_4

    if-ne v6, v4, :cond_3

    .line 59
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const/high16 v4, 0x40c00000    # 6.0f

    .line 61
    invoke-static {v3, v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 59
    invoke-static {v5, v7, v8, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/graphics/Bitmap;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/beta/ui/h;->u:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 63
    :cond_3
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 65
    invoke-static {v4, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 63
    invoke-static {v5, v7, v8, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/graphics/Bitmap;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/beta/ui/h;->u:Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    :goto_1
    iget-object v3, v0, Lcom/tencent/bugly/beta/ui/h;->u:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    const-string v3, ""

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, v0, Lcom/tencent/bugly/beta/ui/h;->u:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0

    .line 76
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 77
    iget-wide v5, v1, Lcom/tencent/bugly/beta/ui/d;->c:J

    const/4 v0, 0x0

    sub-long v5, v3, v5

    const-wide/16 v7, 0x12c

    cmp-long v0, v5, v7

    if-lez v0, :cond_6

    .line 78
    iput-wide v3, v1, Lcom/tencent/bugly/beta/ui/d;->c:J

    .line 79
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_5

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->d:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 82
    :cond_5
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->d:Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_2
    iget-object v0, v1, Lcom/tencent/bugly/beta/ui/d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    const/4 v2, 0x0

    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcn/pedant/SweetAlert/SuccessTickView;
.super Landroid/view/View;
.source "SuccessTickView.java"


# instance fields
.field private final CONST_LEFT_RECT_W:F

.field private final CONST_RADIUS:F

.field private final CONST_RECT_WEIGHT:F

.field private final CONST_RIGHT_RECT_W:F

.field private final MAX_RIGHT_RECT_W:F

.field private final MIN_LEFT_RECT_W:F

.field private mDensity:F

.field private mLeftRectGrowMode:Z

.field private mLeftRectWidth:F

.field private mMaxLeftRectWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRightRectWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mDensity:F

    const p1, 0x3f99999a    # 1.2f

    .line 15
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RADIUS:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 16
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 17
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    const/high16 p1, 0x41c80000    # 25.0f

    .line 18
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    const p1, 0x40533333    # 3.3f

    .line 19
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->MIN_LEFT_RECT_W:F

    .line 20
    iget p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    const v0, 0x40d66666    # 6.7f

    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->MAX_RIGHT_RECT_W:F

    .line 29
    invoke-direct {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mDensity:F

    const p1, 0x3f99999a    # 1.2f

    .line 15
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RADIUS:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 16
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 17
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    const/high16 p1, 0x41c80000    # 25.0f

    .line 18
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    const p1, 0x40533333    # 3.3f

    .line 19
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->MIN_LEFT_RECT_W:F

    .line 20
    iget p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    const p2, 0x40d66666    # 6.7f

    invoke-virtual {p0, p2}, Lcn/pedant/SweetAlert/SuccessTickView;->dip2px(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->MAX_RIGHT_RECT_W:F

    .line 34
    invoke-direct {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcn/pedant/SweetAlert/SuccessTickView;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectGrowMode:Z

    return p1
.end method

.method static synthetic access$100(Lcn/pedant/SweetAlert/SuccessTickView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectWidth:F

    return p0
.end method

.method static synthetic access$102(Lcn/pedant/SweetAlert/SuccessTickView;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectWidth:F

    return p1
.end method

.method static synthetic access$200(Lcn/pedant/SweetAlert/SuccessTickView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mMaxLeftRectWidth:F

    return p0
.end method

.method static synthetic access$302(Lcn/pedant/SweetAlert/SuccessTickView;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mRightRectWidth:F

    return p1
.end method

.method static synthetic access$400(Lcn/pedant/SweetAlert/SuccessTickView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->MAX_RIGHT_RECT_W:F

    return p0
.end method

.method static synthetic access$500(Lcn/pedant/SweetAlert/SuccessTickView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->MIN_LEFT_RECT_W:F

    return p0
.end method

.method static synthetic access$600(Lcn/pedant/SweetAlert/SuccessTickView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    return p0
.end method

.method static synthetic access$700(Lcn/pedant/SweetAlert/SuccessTickView;)F
    .locals 0

    .line 12
    iget p0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    return p0
.end method

.method private init()V
    .locals 3

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/pedant/SweetAlert/R$color;->success_stroke_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    iput v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectWidth:F

    .line 41
    iget v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    iput v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mRightRectWidth:F

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectGrowMode:Z

    return-void
.end method


# virtual methods
.method public dip2px(F)F
    .locals 2

    .line 81
    iget v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mDensity:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mDensity:F

    .line 84
    :cond_0
    iget v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->getWidth()I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->getHeight()I

    move-result v1

    .line 51
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    int-to-double v2, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L    # 1.4

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v0, v0

    .line 55
    iget v2, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    add-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    iput v2, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mMaxLeftRectWidth:F

    .line 57
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 58
    iget-boolean v5, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectGrowMode:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 59
    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 60
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectWidth:F

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    .line 61
    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 62
    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 64
    :cond_0
    iget v5, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    add-float/2addr v5, v0

    div-float/2addr v5, v3

    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v4

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 65
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectWidth:F

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    .line 66
    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 67
    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 70
    :goto_0
    iget v5, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RADIUS:F

    iget v6, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RADIUS:F

    iget-object v7, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    int-to-float v1, v1

    .line 73
    iget v5, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RIGHT_RECT_W:F

    add-float/2addr v1, v5

    div-float/2addr v1, v3

    iget v5, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    add-float/2addr v1, v5

    sub-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 74
    iget v1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_LEFT_RECT_W:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 75
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RECT_WEIGHT:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 76
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mRightRectWidth:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 77
    iget v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RADIUS:F

    iget v1, p0, Lcn/pedant/SweetAlert/SuccessTickView;->CONST_RADIUS:F

    iget-object v3, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public startTickAnim()V
    .locals 3

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mLeftRectWidth:F

    .line 90
    iput v0, p0, Lcn/pedant/SweetAlert/SuccessTickView;->mRightRectWidth:F

    .line 91
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SuccessTickView;->invalidate()V

    .line 92
    new-instance v0, Lcn/pedant/SweetAlert/SuccessTickView$1;

    invoke-direct {v0, p0}, Lcn/pedant/SweetAlert/SuccessTickView$1;-><init>(Lcn/pedant/SweetAlert/SuccessTickView;)V

    const-wide/16 v1, 0x2ee

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0x64

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 119
    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/SuccessTickView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.class public Lcom/baoyz/swipemenulistview/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x1

.field private static final MENU_VIEW_ID:I = 0x2

.field private static final STATE_CLOSE:I = 0x0

.field private static final STATE_OPEN:I = 0x1


# instance fields
.field private MAX_VELOCITYX:I

.field private MIN_FLING:I

.field private isFling:Z

.field private mBaseX:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mContentView:Landroid/view/View;

.field private mDownX:I

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSwipeDirection:I

.field private position:I

.field private state:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    const/16 p1, 0xf

    .line 40
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MIN_FLING:I

    const/16 p1, 0x1f4

    .line 41
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->dp2px(I)I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MAX_VELOCITYX:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    const/16 p1, 0xf

    .line 40
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MIN_FLING:I

    const/16 p1, 0x1f4

    .line 41
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->dp2px(I)I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MAX_VELOCITYX:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/baoyz/swipemenulistview/SwipeMenuView;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/baoyz/swipemenulistview/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/baoyz/swipemenulistview/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    const/16 v0, 0xf

    .line 40
    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MIN_FLING:I

    const/16 v0, 0x1f4

    .line 41
    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->dp2px(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MAX_VELOCITYX:I

    .line 56
    iput-object p3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    iput-object p4, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    .line 60
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p1, p0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->setLayout(Lcom/baoyz/swipemenulistview/SwipeMenuLayout;)V

    .line 61
    invoke-direct {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/baoyz/swipemenulistview/SwipeMenuLayout;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isFling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/baoyz/swipemenulistview/SwipeMenuLayout;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MIN_FLING:I

    return p0
.end method

.method static synthetic access$200(Lcom/baoyz/swipemenulistview/SwipeMenuLayout;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->MAX_VELOCITYX:I

    return p0
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 294
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private init()V
    .locals 5

    .line 91
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout$1;

    invoke-direct {v0, p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout$1;-><init>(Lcom/baoyz/swipemenulistview/SwipeMenuLayout;)V

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 112
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v3, v4}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 117
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 130
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->setId(I)V

    .line 138
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private swipe(I)V
    .locals 5

    int-to-float v0, p1

    .line 211
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    mul-int p1, p1, v0

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    neg-int v1, p1

    iget-object v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 220
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 222
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->layout(IIII)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    iget-object v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v2

    neg-int v2, v2

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getTop()I

    move-result p1

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getBottom()I

    move-result v3

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->layout(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 272
    :cond_0
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    .line 274
    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->swipe(I)V

    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 233
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    mul-int v0, v0, v1

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->swipe(I)V

    .line 236
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mBaseX:I

    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    mul-int v0, v0, v1

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->swipe(I)V

    .line 241
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getMenuView()Lcom/baoyz/swipemenulistview/SwipeMenuView;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->position:I

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 202
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 163
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 308
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 310
    iget p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 311
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p5}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p3, p5

    iget-object p5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p4, p3, p5}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->layout(IIII)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    iget-object p2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {p2}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    iget-object p3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p2, p4, p4, p3}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 300
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 301
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->measure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onSwipe(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 181
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    if-ne v0, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->swipe(I)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-boolean v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isFling:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    return v1

    .line 175
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mDownX:I

    .line 176
    iput-boolean v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isFling:Z

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 207
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openMenu()V
    .locals 2

    .line 279
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    .line 281
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    mul-int v0, v0, v1

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->swipe(I)V

    :cond_0
    return-void
.end method

.method public setMenuHeight(I)V
    .locals 3

    const-string v0, "byz"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 323
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 324
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 325
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 82
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->position:I

    .line 83
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->setPosition(I)V

    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    return-void
.end method

.method public smoothCloseMenu()V
    .locals 7

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    .line 248
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mBaseX:I

    .line 250
    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x15e

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getRight()I

    move-result v0

    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mBaseX:I

    .line 253
    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mCloseScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x15e

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 255
    :goto_0
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    return-void
.end method

.method public smoothOpenMenu()V
    .locals 14

    const/4 v0, 0x1

    .line 259
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->state:I

    .line 260
    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mSwipeDirection:I

    if-ne v1, v0, :cond_0

    .line 261
    iget-object v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v3, v0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x15e

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v8, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mOpenScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->mMenuView:Lcom/baoyz/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x15e

    invoke-virtual/range {v8 .. v13}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    return-void
.end method

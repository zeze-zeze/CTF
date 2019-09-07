def gen_divan(l, n):
    assert l < n**2
    key, F = random_permutation(n), []
    for _ in range(l):
        g = random_permutation(n)
        F.append((str(g.to_image()), str((key * g * key.inverse()).to_image())))
    return key, F

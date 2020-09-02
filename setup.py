#nsml: registry.navercorp.com/nsml/torch-cv/torch-1.3keras2.3

from distutils.core import setup
setup(name='hello', version='1.0',
        install_requires=[
            'pytorch_transformers',
            'pandas',
            'numpy',
            ])
